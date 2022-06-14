import 'package:flutter/material.dart';
import 'package:makeshop/utils/dimesnsion.dart';

class ProductGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getHeight(100),
      width: getWidth(100),
      child: Card(
        child: GridTile(
          footer: Container(
            color: Colors.black54,
            height: getHeight(40),
            child: Center(
              child: ListTile(
                trailing: Text(
                  '\$200',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: getHeight(20),
                      fontWeight: FontWeight.bold),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    getHeight(10),
                  ),
                ),
                leading: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.shopping_cart_rounded,
                    color: Colors.amber,
                    size: getHeight(20),
                  ),
                ),
              ),
            ),
          ),
          child: Image.network(
            'https://media.istockphoto.com/photos/pickles-picture-id929981498?s=612x612',
            fit: BoxFit.cover,
          ),
        ),
        elevation: getHeight(5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            getHeight(10),
          ),
        ),
      ),
    );
  }
}
