import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:todo_flutter_app/screens/form.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var items= [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      theme: ThemeData.dark(),
      home: Scaffold(appBar: AppBar(
        title: Text('Flutter Todo App'),
      
      ),
      body: Padding(padding: EdgeInsets.all(10),
      child: ListView.builder(itemBuilder:(context, index) {
        return ListTile(
          title: Text('sample'),
        );
      },)

      ),
      ),
      
    );
  }
}