import 'package:flutter/material.dart';
import 'package:makeshop/utils/dimesnsion.dart';
import 'package:makeshop/widgets/grid_container.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: Text(
                'MakeShop',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Theme.of(context).accentColor,
                  fontSize: getHeight(32),
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            SizedBox(
              height: getHeight(20),
            ),
            GridContainer(),
          ],
        ),
      ),
    );
  }
}
