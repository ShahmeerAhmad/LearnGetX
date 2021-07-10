import 'package:get/get.dart';
import 'package:learnget/product_module/binding.dart';
import 'package:learnget/product_module/views/First.dart';

part 'route.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(name: _Paths.HOME, page: () => First(), binding: ProductBinding()),
  ];
}
