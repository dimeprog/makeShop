import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makeshop/controller/categoryoptioncontroler.dart';
import 'package:makeshop/utils/dimesnsion.dart';
import 'package:makeshop/widgets/categoryscroll_item.dart';

class CategoryScrollView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _categoryOptionController = Get.put(CategoryOptionController());
    return Container(
      color: Colors.transparent,
      height: getHeight(50),
      child: Obx(
        () => ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          itemCount: _categoryOptionController.Category.length,
          itemBuilder: (context, i) => CategoryScrollItem(
            CategoryString: _categoryOptionController.Category[i],
          ),
        ),
      ),
    );
  }
}
