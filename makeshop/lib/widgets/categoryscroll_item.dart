import 'package:flutter/material.dart';
import 'package:makeshop/utils/dimesnsion.dart';

class CategoryScrollItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: getWidth(10),
      ),
      height: getHeight(24),
      width: getWidth(50),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: Colors.grey,
          style: BorderStyle.solid,
        ),
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(
          getHeight(5),
        ),
      ),
      child: const Center(
        child: Text(
          'All',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
