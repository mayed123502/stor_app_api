import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ProdectDetiles extends StatelessWidget {
   ProdectDetiles({Key? key}) : super(key: key);
var one = Get.arguments;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Product Details Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.network(
              one[1]['imageUrl'],
              height: SizerUtil.deviceType == DeviceType.mobile ? 50.h : 50.h,
              width: SizerUtil.deviceType == DeviceType.mobile ? 50.w : 50.w,
            ),
            Text(one[0]['titile'])
          ],
        ),
      ),
    );
  }
}
