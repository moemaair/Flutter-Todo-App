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
  var items = [10,20,30,40,50,60,70,80,90,100];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Todo App'),
          ),
          body: Padding(
              padding: EdgeInsets.all(0),
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index ) {
                  final item = items[index];
                
                  return ListTile(
                    leading: CircleAvatar(child: Text('${index + 1}'), backgroundColor: Colors.amber,),
                    title: Text(item.toString()),
                  );
                },
              )),
              floatingActionButton: FloatingActionButton.extended(onPressed: toFormScreen, label: Text('Add todo'), foregroundColor:  Colors.black,  backgroundColor: Colors.amber),
        ),
    );
      
  
  }
  void toFormScreen(){
    final route = MaterialPageRoute(builder:(context) => const Add_todo());
   Navigator.push(context, route);
  }
}
