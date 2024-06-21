import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:slash_test2/core/constant/app_assets.dart';
import 'package:slash_test2/features/home/presentation/layouts/web/screen/home_screen.dart';

class HomeNavigationWeb extends StatefulWidget {
  const HomeNavigationWeb({super.key});

  @override
  State<HomeNavigationWeb> createState() => _HomeNavigationWebState();
}

class _HomeNavigationWebState extends State<HomeNavigationWeb> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        NavigationRail(
          labelType: NavigationRailLabelType.all,
          selectedIndex: selectedIndex,
          useIndicator: true,
          indicatorColor: Colors.red.shade300,
          elevation: 15,
          groupAlignment: -0.5,
          onDestinationSelected: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          destinations: [
            NavigationRailDestination(
                icon: SvgPicture.asset(AppAssets.home),
                label: const Text("Home")),
            NavigationRailDestination(
                icon: SvgPicture.asset(AppAssets.fav),
                label: const Text("Favorite")),
            NavigationRailDestination(
                icon: SvgPicture.asset(AppAssets.cart),
                label: const Text("Cart")),
            NavigationRailDestination(
                icon: SvgPicture.asset(AppAssets.profile),
                label: const Text("Profile"))
          ],
        ),
        const Expanded(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: HomeScreen(),
        ))
      ],
    );
  }
}
