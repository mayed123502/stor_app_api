import 'dart:convert';

import '../helper/api.dart';
import '../models/prodect_modle.dart';
import 'package:http/http.dart' as http;

class GetAllProdectService {
  Future<List<ProdectModel>?> getAllProdects() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products');
    // List<dynamic> data = jsonDecode(response.body);
    List<ProdectModel> prodectList = [];
    for (int i = 0; i < data.length; i++) {
      prodectList.add(ProdectModel.fromJson(data[i]));
    }
    return prodectList;
  }
}
