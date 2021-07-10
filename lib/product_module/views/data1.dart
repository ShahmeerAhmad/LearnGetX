import 'package:flutter/material.dart';
import 'package:learnget/product_module/models/Data1model.dart';

class Data1 extends StatelessWidget {
  final DataModel productname;
  const Data1({Key? key, required this.productname}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {},
          child: Container(
            alignment: Alignment.center,
            width: 200,
            height: 200,
            color: Colors.greenAccent,
            child: Text(productname.name),
          ),
        ),
      ),
    );
  }
}
