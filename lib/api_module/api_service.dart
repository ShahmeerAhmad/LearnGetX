import 'package:get/get.dart';
import 'package:get/get_connect/connect.dart';
// import 'package:http/http.dart' as http;

class ApiServices extends GetConnect {
  // static var client = http.Client();
  Future<List<dynamic>> fetchProduct() async {
    var response = await get(
        "https://makeup-api.herokuapp.com/api/v1/products.json?brand=marienatie");
    if (response.status.hasError) {
      return Future.error(response.statusText!);
    } else {
      return response.body;
    }
  }
}
