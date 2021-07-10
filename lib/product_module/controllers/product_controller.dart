import 'package:get/get.dart';
import 'package:learnget/api_module/api_service.dart';

class ProductController extends GetxController with StateMixin<List<dynamic>> {
  @override
  void onInit() {
    super.onInit();

    fetchProduct();
  }

  void fetchProduct() async {
    ApiServices().fetchProduct().then((value) {
      change(value, status: RxStatus.success());
    }, onError: (err) {
      change(null, status: RxStatus.error());
    });
  }
}
