import 'package:flutter/material.dart';
import 'package:hospital_system/screen/category.dart';
import 'package:hospital_system/screen/product_details.dart';
import 'package:hospital_system/screen/view_all_products.dart';
import 'package:hospital_system/screen/visit_details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const VisitDetails(),
    );
  }
}
