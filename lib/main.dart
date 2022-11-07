import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:love_pat/pags/home.dart';
import 'package:love_pat/pags/login.dart';
import 'package:love_pat/pags/resetpass.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
