import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stor_app_api/service/categories_service.dart';
import 'package:http/http.dart' as http;

import 'routes/routes.dart';
import 'screens/home_page.dart';

void main() async {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
         getPages: AppRoutes.routes,

      initialRoute: AppRoutes.mainSreen,
    );
  }
}
