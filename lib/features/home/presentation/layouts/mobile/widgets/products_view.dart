import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slash_test2/features/home/data/models/product_model.dart';
import 'package:slash_test2/features/home/presentation/layouts/mobile/widgets/product_card.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({
    super.key,
    required this.productsList,
  });
  final List productsList;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h,
      child: ListView.separated(
          itemBuilder: (context, index) {
            ProductModel product = ProductModel.fromMap(productsList[index]);
            return ProductCard(product: product);
          },
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) => 15.horizontalSpace,
          itemCount: productsList.length),
    );
  }
}
