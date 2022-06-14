import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:makeshop/utils/dimesnsion.dart';
import 'package:makeshop/widgets/product_grid.dart';

class GridContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          mainAxisSpacing: getHeight(5),
          crossAxisSpacing: getWidth(5),
        ),
        itemBuilder: (context, i) => ProductGrid(),
        itemCount: 100,
      ),
    );
  }
}
