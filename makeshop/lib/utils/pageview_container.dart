import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makeshop/screen/product_details_screen.dart';

import 'dimesnsion.dart';

class PageviewContainer extends StatelessWidget {
  final double containerHeight;
  final double containerWidth;
  final String imageLink;
  final String productName;
  final String productPrice;

  PageviewContainer(
      {required this.containerHeight,
      required this.containerWidth,
      required this.imageLink,
      required this.productName,
      required this.productPrice});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () => Get.to(ProductDetailScreen()),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              imageLink,
              scale: 1.0,
            ),
          ),
          color: Color(0xffC9B7B9),
        ),
        margin: EdgeInsets.only(
          left: getWidth(20),
          right: getWidth(20),
        ),
        height: getHeight(containerHeight),
        width: getHeight(containerHeight),
        child: Stack(children: [
          Positioned(
            top: 0.0,
            right: getWidth(10),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_border,
                size: getHeight(28),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: getHeight(0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(
                    getHeight(5),
                  ),
                  topLeft: Radius.circular(
                    getHeight(5),
                  ),
                ),
              ),
              height: getHeight(30),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '\$${productPrice}',
                      overflow: TextOverflow.fade,
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: getHeight(20),
                          fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.shopping_cart_rounded,
                        size: getHeight(20),
                        color: Colors.amber,
                      ),
                    )
                  ]),
            ),
          )
        ]),
      ),
    );
  }
}
