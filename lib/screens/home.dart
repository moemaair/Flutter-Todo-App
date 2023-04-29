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
  var items = [for (var i = 1; i <= 100; i++) i];


  @override
  Widget build(BuildContext context) {
    debugShowCheckedModeBanner: false;
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
       appBar: AppBar(
        title: Text('Flutter Todo App'),
       ),
      body: Padding(
          padding: EdgeInsets.all(0),
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];

              return GestureDetector(
                onTap: (){
                  final snackBar = SnackBar(content: Text('${index + 1}'));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: ListTile(
                  leading: CircleAvatar(
                    child: Text('${index + 1}'),
                    backgroundColor: Colors.black,
                  ),
                  title: Text('Title'),
                  subtitle: Text("subtile"),
                ),
              );
            },
          )),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (BuildContext context){
                return Todo();
              })
            );
          },
          label: Text('Add todo'),
          foregroundColor: Colors.black,
          backgroundColor: Colors.amber),
    ));
  }


}
