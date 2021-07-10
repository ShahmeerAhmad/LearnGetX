import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learnget/AppPages.dart';
import 'package:learnget/common_module/appString.dart';
import 'package:learnget/common_module/appcolor.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: AppPages.routes,
      initialRoute: AppPages.INITIAL,
      title: AppString.fetchApiData,
      theme: ThemeData(primarySwatch: AppColor.purple),
      debugShowCheckedModeBanner: false,
    );
  }
}
