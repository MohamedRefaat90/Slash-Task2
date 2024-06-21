import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slash_test2/core/constant/app__colors.dart';
import 'package:slash_test2/core/widgets/btn.dart';

class HeaderSection extends StatelessWidget {
  final String title;
  const HeaderSection({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          Text(
            title,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          const Text("See all",
              style: TextStyle(fontSize: 14, color: AppColors.black)),
          10.horizontalSpace,
          BTN(
              widget: const Icon(
                Icons.arrow_forward_ios,
                color: AppColors.black,
                size: 12,
              ),
              width: 40,
              color: AppColors.lightGrey,
              padding: 0,
              press: () {}),
        ]),
        10.verticalSpace,
      ],
    );
  }
}
