import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slash_test2/core/constant/app__colors.dart';
import 'package:slash_test2/features/home/data/models/product_model.dart';
import 'package:slash_test2/features/home/presentation/cubit/home_cubit.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Stack(
        alignment: Alignment.topRight,
        children: [
          Container(
              clipBehavior: Clip.antiAlias,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: Image.asset(
                product.image,
                height: 110,
                width: 135,
                fit: BoxFit.fitWidth,
              )),
          BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.all(5),
                child: MaterialButton(
                  onPressed: () => context.read<HomeCubit>().toggleFav(product),
                  color: AppColors.white,
                  minWidth: 50,
                  shape: const CircleBorder(),
                  child: Icon(
                      product.isFav
                          ? Icons.favorite
                          : Icons.favorite_border_outlined,
                      color: product.isFav ? Colors.red : Colors.black,
                      size: 20),
                ),
              );
            },
          )
        ],
      ),
      10.verticalSpace,
      Text(product.name,
          style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 16)),
      Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("EGP ${product.price}",
                style: const TextStyle(fontWeight: FontWeight.w600)),
            15.horizontalSpace,
            CircleAvatar(
              radius: 10,
              child: Image.asset("assets/images/brand.png"),
            ),
            5.horizontalSpace,
            BlocBuilder<HomeCubit, HomeState>(
              builder: (context, state) {
                return CircleAvatar(
                  radius: 10,
                  backgroundColor: AppColors.black,
                  child: IconButton(
                    onPressed: () =>
                        context.read<HomeCubit>().addToCart(product),
                    padding: EdgeInsets.zero,
                    icon: Icon(product.isSelected ? Icons.done : Icons.add,
                        color: AppColors.white, size: 12),
                  ),
                );
              },
            )
          ])
    ]);
  }
}
