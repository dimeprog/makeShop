import 'package:flutter/material.dart';
import 'package:makeshop/utils/dimesnsion.dart';
import 'package:makeshop/utils/nav_bar.dart';
import 'package:makeshop/widgets/app_drawer.dart';
import 'package:makeshop/widgets/categoryscroll_view.dart';
import 'package:makeshop/widgets/grid_container.dart';

import '../utils/pageviewAmination.dart';

class HomeScreen extends StatelessWidget {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  void _iconFunction() => _scaffoldKey.currentState!.openDrawer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Color(0xffF8F2F2),
      drawer: AppDrawer(),
      body: SafeArea(
        child: Column(
          children: [
            NavBar(
              iconFunction: _iconFunction,
              isFav: false,
            ),
            SizedBox(
              height: getHeight(20),
            ),
            CategoryScrollView(),
            SizedBox(
              height: getHeight(40),
            ),
            PageViewContainer(
              containerHeight: 300,
              containerWidth: 100,
            ),
          ],
        ),
      ),
    );
  }
}
