import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:device_preview/device_preview.dart';
import 'package:sizer/sizer.dart';

import 'routes/routes.dart';

void main() async {
  runApp(
    DevicePreview(
      enabled: true,

      builder: (context) => StoreApp(), // Wrap your app
    ),
  );
}

class StoreApp extends StatelessWidget {
  const StoreApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        getPages: AppRoutes.routes,
        initialRoute: AppRoutes.mainSreen,
      );
    });
  }
}
