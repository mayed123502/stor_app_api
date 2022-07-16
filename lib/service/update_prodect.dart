import '../helper/api.dart';
import '../models/prodect_modle.dart';

class UpdateProduct{
  Future<ProdectModel> updateProduct({
    required String title,
    required String price,
    required String desc,
    required String image,
    required String category,
  }) async {
    Map<String, dynamic> data = await Api().put(
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