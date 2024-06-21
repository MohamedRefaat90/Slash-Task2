import 'package:flutter/material.dart';
import 'package:slash_test2/features/home/presentation/layouts/mobile/screen/home_navigation_mobile.dart';
import 'package:slash_test2/features/home/presentation/layouts/web/screen/home_navigation.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600) {
        return const HomeNavigationMobile();
      } else {
        return const HomeNavigationWeb();
      }
    });
  }
}
