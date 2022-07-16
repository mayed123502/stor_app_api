

import '../bindings/product_binding.dart';
import '../controllers/product_controller.dart';
import 'package:get/get.dart';


class ProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProductController());
  
  }
}