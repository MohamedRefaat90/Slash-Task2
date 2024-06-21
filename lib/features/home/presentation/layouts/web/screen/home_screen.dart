import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slash_test2/features/home/data/data_sources/products_data.dart';
import 'package:slash_test2/features/home/presentation/cubit/home_cubit.dart';
import 'package:slash_test2/features/home/presentation/layouts/web/widgets/categorise_bar.dart';
import 'package:slash_test2/features/home/presentation/layouts/web/widgets/header_section.dart';
import 'package:slash_test2/features/home/presentation/layouts/web/widgets/home_image_slider.dart';
import 'package:slash_test2/features/home/presentation/layouts/web/widgets/search_bar.dart';

import '../widgets/custom_appbar.dart';
import '../widgets/products_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (context) => HomeCubit(),
      child: Scaffold(
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: SafeArea(
            child: Column(children: [
              const CustomAppbar(),
              10.verticalSpace,
              const CustomSearchBar(),
              10.verticalSpace,
              const HomeImageSlider(),
              20.verticalSpace,
              const HeaderSection(title: "Categories"),
              const CategoriseBar(),
              20.verticalSpace,
              const HeaderSection(title: "Best Selling"),
              ProductsView(productsList: products["bestSelling"]),
              20.verticalSpace,
              const HeaderSection(title: "New Arrival"),
              ProductsView(productsList: products["newArrival"]),
              20.verticalSpace,
              const HeaderSection(title: "Recommended for you"),
              ProductsView(productsList: products["recommendedForYou"]),
            ]),
          ),
        )),
      ),
    );
  }
}
