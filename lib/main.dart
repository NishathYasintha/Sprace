import 'dart:html';

import 'package:flutter/material.dart';
import 'package:sprace/Screens/login.dart';
import 'package:sprace/Screens/profile.dart';
import 'package:sprace/Screens/service.dart';

import 'Screens/cleaners.dart';
import 'Screens/inorder.dart';
import 'Screens/orders.dart';
import 'Screens/signup.dart';
import 'Screens/dashboard.dart';
// import 'component/sidemenu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sprace',
      theme: ThemeData(
        primaryColor: Color(0xFF94B447),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: OrdersPage(),
    );
  }
}
