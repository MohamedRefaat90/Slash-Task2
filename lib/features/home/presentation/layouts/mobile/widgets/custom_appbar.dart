import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../core/constant/app_assets.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      const Text("Slash.",
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 22)),
      Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(AppAssets.locationIcon),
          10.horizontalSpace,
          const Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Nasr City",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14)),
              Text("Cairo",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14)),
            ],
          ),
          IconButton(
              onPressed: () {}, icon: SvgPicture.asset(AppAssets.arrowDownIcon))
        ],
      ),
      SvgPicture.asset(AppAssets.notificationIcon)
    ]);
  }
}
