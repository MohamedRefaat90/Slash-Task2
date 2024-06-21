import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_test2/features/home/presentation/cubit/home_cubit.dart';

import '../../../../data/data_sources/image_slider_data.dart';

class imageSliderIndicators extends StatelessWidget {
  const imageSliderIndicators({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: SizedBox(
              height: 12,
              child: ListView.builder(
                  itemCount: sliderImages.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      width: context.read<HomeCubit>().imagesSliderIndicator ==
                              index
                          ? 17
                          : 10,
                      margin: const EdgeInsets.only(right: 5, bottom: 2),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color:
                              context.read<HomeCubit>().imagesSliderIndicator ==
                                      index
                                  ? const Color(0xff292929)
                                  : const Color(0xffD9D9D9))))),
        );
      },
    );
  }
}
