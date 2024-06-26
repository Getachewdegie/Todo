// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables
//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:my_flutter_app/pages/todo_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoPage(),
    );
  }
}
