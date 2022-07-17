import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../routes/routes.dart';

Widget CartWidget(
    {required String titile, required String? imageUrl, required num? price}) {
  return InkWell(
    onTap: () {
      Get.toNamed(Routes.prodectDetiles, arguments: [
    {"titile":titile},
    {"imageUrl": imageUrl}
]);
    },
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: .5.h, vertical: .5.h),
      child: Container(
        padding: const EdgeInsets.all(5),
        // ignore: sort_child_properties_last
        child: Column(children: [
          Row(
            children: [
              Text(r"$" + "$price"),
              SizedBox(
                width: 2.w,
              ),
              SizedBox(
                width: 80,
                child: Text(
                  "$titile",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(fontSize: 10.sp),
                ),
              )
            ],
          ),
          Image.network(
            "$imageUrl",
            width: SizerUtil.deviceType == DeviceType.mobile ? 15.w : 10.w,
            height: SizerUtil.deviceType == DeviceType.mobile ? 17.h : 8.h,
          )
        ]),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 3.0,
                blurRadius: 5.0,
              ),
            ]),
      ),
    ),
  );
}
