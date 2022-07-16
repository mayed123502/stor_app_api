import 'package:get/get.dart';

import '../logic/bindings/product_binding.dart';
import '../screens/home_page.dart';

class AppRoutes {
  static const mainSreen = Routes.homePage;

  static final routes = [
    GetPage(
      name: Routes.homePage,
      page: () =>  HomePage(),
      binding: ProductBinding(),
    ),
  ];
}

class Routes {
  static const homePage = '/homePage';
}
