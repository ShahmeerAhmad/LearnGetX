import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learnget/product_module/controllers/product_controller.dart';
import 'package:learnget/product_module/views/product_list_view.dart';

class First extends GetView<ProductController> {
  First({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: controller.obx((data) {
      return Center(
        child: MaterialButton(
          child: Text("Go home"),
          onPressed: () {
            Get.to(() => ProductListView(
                  data: data,
                ));
          },
        ),
      );
    }, onError: (err) {
      return Center(child: Text("wait"));
    }, onLoading: Center(child: Text("Hel"))));
  }
}
