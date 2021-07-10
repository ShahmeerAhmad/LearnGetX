import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learnget/common_module/appString.dart';
import 'package:learnget/common_module/appcolor.dart';
import 'package:learnget/product_module/models/Data1model.dart';
import 'package:learnget/product_module/models/product_model.dart';

import 'data1.dart';

class ProductListView extends StatelessWidget {
  var data;
  ProductListView({required this.data});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(AppString.productList),
        ),
        body: ListView.builder(
            itemCount: data!.length,
            itemBuilder: (context, index) {
              Data1Model _product = Data1Model.fromJson(data[index]);

              return GestureDetector(
                onTap: () {
                  print("hell call");
                  Get.rawSnackbar(
                      message: "cal", duration: Duration(seconds: 2));
                  Get.to(
                      () => Data1(productname: DataModel(name: _product.name)));
                },
                child: Column(
                  children: [
                    Row(
                      children: [
                        // Container(
                        //   width: 150,
                        //   height: 100,
                        //   margin: EdgeInsets.fromLTRB(16, 8, 8, 8),
                        //   child: ClipRRect(
                        //     borderRadius: BorderRadius.circular(8),
                        //     child: _product.imageLink != null
                        //         ? Image.network(
                        //             _product.imageLink,
                        //             width: 150,
                        //             height: 100,
                        //             fit: BoxFit.fill,
                        //             color: AppColor.purple,
                        //             colorBlendMode: BlendMode.color,
                        //           )
                        //         : Container(),
                        //   ),
                        // ),
                        Flexible(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              _product.name,
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              _product.brand,
                              style:
                                  TextStyle(fontSize: 14, color: AppColor.grey),
                            ),
                            Text(
                              _product.category,
                              style: TextStyle(
                                  fontSize: 14, color: AppColor.grey200),
                            )
                          ],
                        ))
                      ],
                    ),
                    Container(
                      color: AppColor.grey200,
                      height: 2,
                    )
                  ],
                ),
              );
            }));
  }
}
