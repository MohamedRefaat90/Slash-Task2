import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';
import 'package:slash_test2/core/constant/app_assets.dart';
import 'package:slash_test2/features/home/presentation/layouts/mobile/screen/home_screen.dart';

import '../../../../../../core/constant/app__colors.dart';

class HomeNavigationMobile extends StatelessWidget {
  const HomeNavigationMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      navBarHeight: 60,
      tabs: [
        PersistentTabConfig(
          screen: const HomeScreen(),
          item: ItemConfig(
              icon: SvgPicture.asset(AppAssets.home),
              title: "Home",
              activeForegroundColor: AppColors.black),
        ),
        PersistentTabConfig(
          screen: const HomeScreen(),
          item: ItemConfig(
              icon: SvgPicture.asset(AppAssets.fav),
              title: "Favorite",
              activeForegroundColor: AppColors.black),
        ),
        PersistentTabConfig(
          screen: const HomeScreen(),
          item: ItemConfig(
              icon: SvgPicture.asset(AppAssets.cart),
              title: "Cart",
              activeForegroundColor: AppColors.black),
        ),
        PersistentTabConfig(
          screen: const HomeScreen(),
          item: ItemConfig(
              icon: SvgPicture.asset(AppAssets.profile),
              title: "Profile",
              activeForegroundColor: AppColors.black),
        ),
      ],
      navBarBuilder: (navBarConfig) => Style4BottomNavBar(
        navBarConfig: navBarConfig,
        navBarDecoration:
            const NavBarDecoration(padding: EdgeInsets.only(bottom: 5)),
      ),
    );
  }
}
