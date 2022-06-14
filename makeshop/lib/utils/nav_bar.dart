import 'package:flutter/material.dart';
import 'package:makeshop/utils/dimesnsion.dart';
import 'package:makeshop/widgets/app_drawer.dart';

class NavBar extends StatelessWidget {
  final Function() iconFunction;
  final bool isFav;

  NavBar({
    required this.iconFunction,
    required this.isFav,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getWidth(15),
        vertical: getHeight(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: iconFunction,
            icon: Icon(
              Icons.menu,
              size: getHeight(32),
              color: Colors.black,
            ),
          ),
          isFav
              ? const Icon(
                  Icons.favorite_border,
                  color: Colors.pink,
                )
              : Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        color: Colors.grey,
                        size: getHeight(28),
                      ),
                    ),
                    SizedBox(
                      width: getWidth(10),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.shopping_cart,
                        color: Colors.amber,
                        size: getHeight(25),
                      ),
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}
