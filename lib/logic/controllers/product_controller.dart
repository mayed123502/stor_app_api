import 'package:get/get.dart';

import '../../models/prodect_modle.dart';
import '../../service/get_all_prodect.dart';

class ProductController extends GetxController {
  var productList = <ProdectModel>[].obs;
  var isLoading = true.obs;
  @override
  void onInit() {
    super.onInit();

    getProducts();
  }

  void getProducts() async {
    var products = await GetAllProdectService().getAllProdects();
    try {
      isLoading(true);
      if (products!.isNotEmpty) {
        productList.addAll(products);
      }
    } finally {
      isLoading(false);
    }
  }
}
