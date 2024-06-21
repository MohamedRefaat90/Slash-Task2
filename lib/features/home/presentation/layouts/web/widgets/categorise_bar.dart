import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../data/data_sources/categories_data.dart';

class CategoriseBar extends StatelessWidget {
  const CategoriseBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      SizedBox(
        height: 100,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            shrinkWrap: true,
            itemBuilder: (context, index) => Column(
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        color: const Color(0xff292929),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: SvgPicture.asset(categories[index].img,
                          height: 20, fit: BoxFit.none),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      categories[index].title,
                      style: const TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 14),
                    )
                  ],
                ),
            separatorBuilder: (context, index) => 10.horizontalSpace),
      )
    ]);
  }
}
