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
<<<<<<< HEAD
      home: ServicePage(),
=======
      home: InOrderPage(),
>>>>>>> 1a910e562f07d08b11c8b3c5d7e7c8611e3b36de
    );
  }
}
