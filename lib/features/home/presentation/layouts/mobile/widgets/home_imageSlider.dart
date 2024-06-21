import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slash_test2/features/home/data/data_sources/image_slider_data.dart';
import 'package:slash_test2/features/home/presentation/cubit/home_cubit.dart';
import 'package:slash_test2/features/home/presentation/layouts/web/widgets/image_slider_indicators.dart';

class HomeImageSlider extends StatelessWidget {
  const HomeImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: 130.w,
        width: double.infinity,
        child: CarouselSlider.builder(
            itemCount: sliderImages.length,
            options: CarouselOptions(
                viewportFraction: 0.8,
                autoPlay: true,
                enlargeCenterPage: true,
                padEnds: false,
                enlargeFactor: 0.3,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                onPageChanged: (index, reason) {
                  context.read<HomeCubit>().changeImageSliderIndicator(index);
                }),
            itemBuilder: (context, index, realIndex) => Container(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: Image.asset(sliderImages[index], fit: BoxFit.cover))),
      ),
      10.verticalSpace,
      const imageSliderIndicators(),
      // ProductDetailsimageSliderIndicators()
    ]);
  }
}

// ignore: camel_case_types
