import 'package:flutter/material.dart';
import 'package:makeshop/utils/dimesnsion.dart';
import 'package:makeshop/widgets/categoryscroll_item.dart';

class CategoryScrollView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: getWidth(15),
      ),
      height: getHeight(26),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, i) => CategoryScrollItem(),
      ),
    );
  }
}
