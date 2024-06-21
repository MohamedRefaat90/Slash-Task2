import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:slash_test2/core/constant/app_assets.dart';

import '../../../../../../core/constant/app__colors.dart';
import '../../../../../../core/widgets/btn.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: TextField(
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 20),
              prefixIcon: SvgPicture.asset(AppAssets.searchIcon, width: 20),
              prefixIconConstraints: const BoxConstraints(minWidth: 50),
              hintText: "Search here ..",
              border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              filled: true,
              fillColor: AppColors.lightGrey),
        )),
        10.horizontalSpace,
        BTN(
            widget: SvgPicture.asset(AppAssets.horizontalSliderIcon),
            press: () {},
            width: 50,
            padding: 22,
            color: AppColors.lightGrey)
      ],
    );
  }
}
