import 'package:flutter/material.dart';
import 'package:todo_flutter_app/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Home(),
    );
  }
}

