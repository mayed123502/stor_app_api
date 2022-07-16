import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:stor_app_api/helper/api.dart';

class GetAllCategoriesService {
  Future<List<String>?> getAllCategories() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products/categories');
    // List<dynamic> data = jsonDecode(response.body);
    List<String> prodectList = [];
    for (int i = 0; i < data.length; i++) {
      prodectList.add(data[i] as String);
    }
    return prodectList;
  }
}
