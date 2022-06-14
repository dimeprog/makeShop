import 'package:get/get.dart';
import 'package:makeshop/services/remoteservices.dart';

import '../models/product.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  var Products = [].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchProducts();
  }

  Future<List<Product>> fetchProducts() async {
    var products = await RemoteServices.fetchProducts();
    print(products![1].imageLink);
    return Products.value = products;
  }
}
