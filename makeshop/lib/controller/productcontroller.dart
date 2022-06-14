import 'package:get/get.dart';
import 'package:makeshop/services/remoteservices.dart';

import '../models/product.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  var Products = [].obs;

  Future<List<Product>> fetchProducts() async {
    var products = await RemoteServices().getData();
    return Products.value = products;
  }
}
