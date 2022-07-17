import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../models/prodect_modle.dart';
import '../../service/get_all_prodect.dart';

class ProductController extends GetxController {
  var productList = <ProdectModel>[].obs;
  var isLoading = true.obs;
  var deviceType = 0.obs;
  @override
  void onInit() {
    super.onInit();
    deviceTypes();

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

  void deviceTypes() {
    print(SizerUtil.deviceType);

    if (SizerUtil.deviceType == DeviceType.mobile) {
      deviceType.value = 2;
    } else {
      deviceType.value = 4;
    }
  }
}
