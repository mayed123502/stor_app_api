import 'dart:convert';

import 'package:http/http.dart' as http;

import '../helper/api.dart';
import '../models/prodect_modle.dart';

class CategoriesService {
  Future<List<ProdectModel>?> getAllCategories(
      {required String categoryName}) async {
    List<dynamic> data = await Api()
        .get(url: 'https://fakestoreapi.com/products/category/$categoryName');
    // List<dynamic> data = jsonDecode(response.body);
    List<ProdectModel> prodectList = [];
    for (int i = 0; i < data.length; i++) {
      prodectList.add(ProdectModel.fromJson(data[i]));
    }
    return prodectList;
  }
}
