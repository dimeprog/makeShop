import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:makeshop/controller/productcontroller.dart';
import 'package:makeshop/utils/dimesnsion.dart';
import 'package:makeshop/utils/nav_bar.dart';
import 'package:makeshop/widgets/app_drawer.dart';

import '../models/product.dart';
import '../widgets/detail page/description_container.dart';
import '../widgets/detail page/detail_image_container.dart';
import '../widgets/detail page/float_button.dart';
import '../widgets/rating_widget.dart';

class ProductDetailScreen extends StatefulWidget {
  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  final _productController = Get.put(ProductController());

  var productId;
  Product? curProduct;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    productId = fetchId();
  }

  Future<int> fetchId() async {
    int id = await Get.arguments;
    print(id);
    return id;
  }

  final manyId = Get.arguments;

  @override
  Widget build(BuildContext context) {
    final int productId = Get.arguments;
    curProduct = _productController.fetchProductId(productId);

    return Scaffold(
      backgroundColor: Color(0xffF8F2F2),
      drawer: AppDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              NavBar(
                iconFunction: () => Get.back(),
                isFav: true,
                mainIcon: Icons.arrow_back_ios,
                isMenu: false,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: getWidth(8),
                ),
                child: Center(
                  child: Text(
                    curProduct!.name,
                    style: const TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
              DetailImageContainer(
                curProduct: curProduct,
              ),
              SizedBox(height: getHeight(8)),
              Container(
                height: getHeight(30),
                width: double.infinity,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RatingWidget(),
                      SizedBox(
                        width: getHeight(100),
                      ),
                      Text(
                        '\$${curProduct!.price}',
                        style: TextStyle(
                          fontSize: getHeight(24),
                          fontWeight: FontWeight.w600,
                          color: Colors.deepOrange,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: getHeight(10),
              ),
              DescriptionContainer(
                curProduct: curProduct,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatButtonContainer(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
