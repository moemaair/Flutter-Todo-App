import 'package:flutter/material.dart';
import 'package:todo_flutter_app/screens/form.dart';
import 'package:todo_flutter_app/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
     routes: {
        '/form/':(context) => Todo(),
      
      },
      home: Home(),
    );
  }
}

