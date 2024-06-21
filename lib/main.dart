import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slash_test2/core/widgets/responsive_layout.dart';

void main() {
  return runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) {
        return const MainApp();
      }));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
            theme: ThemeData(fontFamily: "Urbanist"),
            home: const ResponsiveLayout(),
          );
        });
  }
}
