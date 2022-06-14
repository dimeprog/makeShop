import 'package:http/http.dart' as http;
import '../models/product.dart';

class RemoteServices {
  static var client = http.Client();
  var Json;
  Future<List<Product>> getData() async {
    var uri =
        Uri.parse('https://makeup-api.herokuapp.com/api/v1/products.json');
    var res = await client.get(uri);
    if (res.statusCode == 200) {
      var Json = res.body;
    }
    return productFromJson(Json);
  }
}
