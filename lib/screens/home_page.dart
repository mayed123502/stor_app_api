import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../logic/controllers/product_controller.dart';
import '../widgets/card_items.dart';

class HomePage extends StatelessWidget {
  final controller = Get.find<ProductController>();

   HomePage({Key? key}) : super(key: key);
  static String id = 'HomePage';
  @override
  Widget build(BuildContext context) {
    print (controller.productList.length);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'New Trind',
            style: TextStyle(color: Colors.black),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
            ),
          ],
          leading: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        body:Obx(() =>controller.isLoading.value? Center(child: CircularProgressIndicator()) :  Padding(
          padding: const EdgeInsets.all(6.0),
          child: GridView.builder(
            itemCount:controller.productList.length,
            itemBuilder: (BuildContext context, int index) {
              return CartWidget(titile:controller.productList[index].title.toString() );
            },
            gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 0, mainAxisSpacing: 0),
          ),
        ),
      ),
    ));
  }
}
