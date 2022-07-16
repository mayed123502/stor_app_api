import 'package:stor_app_api/helper/api.dart';
import 'package:stor_app_api/models/prodect_modle.dart';

class AddProduct {
  Future<ProdectModel> addProduct({
    required String title,
    required String price,
    required String desc,
    required String image,
    required String category,
  }) async {
    Map<String, dynamic> data = await Api().post(
      url: 'https://fakestoreapi.com/products',
      body: {
        'title': title,
        'price': price,
        'description': desc,
        'image': image,
        'category': category
      },
    );

    return ProdectModel.fromJson(data);
  }
}
