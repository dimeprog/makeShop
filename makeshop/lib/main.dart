import 'package:flutter/material.dart';
import 'package:makeshop/screen/home_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.purple,
        accentColor: Color(0xffF8F2F2),
        textSelectionColor: Colors.white,
      ),
      home: HomeScreen(),
    );
  }
}
