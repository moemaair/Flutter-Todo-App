

import 'package:flutter/material.dart';
import 'package:todo_flutter_app/screens/home.dart';

class Todo extends StatelessWidget {
  const Todo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Add todo'),
          leading: GestureDetector(
            onTap: (){
             Navigator.of(context).pop(null);
            },
            child: const Icon(Icons.arrow_back),
          ),
        ),
          body: ListView(
          children:  [
            Padding(padding:const EdgeInsets.all(10),
            child:  Column(
              children:  [
                // add title
                  const TextField(
                        maxLines: 1,
                        obscureText: true,
                        decoration:  InputDecoration(
                          hintText: 'Picking package',
                          labelText: 'Title',
                          border:  OutlineInputBorder()
                        )
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                // add subtitle
                    const TextField(
                      minLines:2,
                      maxLines: 5,
                      decoration:  InputDecoration(
                        hintText: 'downtown post office Box 2343',
                        labelText: 'Subtitle',
                        border: OutlineInputBorder()
                        )
                      ),

              const SizedBox(
              height: 10,
            ),
                ElevatedButton(
                      onPressed: (){
                        func(context);
                    },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.greenAccent,
                        minimumSize: Size.fromHeight(45)
                      ),
                      child: Text('Submit'),
                    ),

              ],
            ),
            )
          ]
        )
      ),
    
  
    );
  }

  void func(BuildContext context) {
    var snackBar = SnackBar(content: Text('sub'));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}