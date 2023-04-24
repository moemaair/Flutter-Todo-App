import 'package:flutter/material.dart';

class Form extends StatelessWidget {
  const Form({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Form'),
          leading: const Icon(Icons.arrow_back),
        ),
        body: ListView(
          children:  [
            Padding(padding:const EdgeInsets.all(10),
            child:  Column(
              children:  [
                // add title
                  TextField(
                    maxLines: 1,
                    decoration:  InputDecoration(
                    hintText: 'Picking package',
                    labelText: 'Title',
                    )
                  ),
                // add subtitle  
                  TextField(
                    minLines:2,
                    maxLines: 5,
                    decoration:  InputDecoration(
                    hintText: 'downtown post office Box2343',
                    labelText: 'Subtitle',
                    )
                  ),
                  ElevatedButton(onPressed: (){}, child: Text('Submit'))
              ],
            ),
            )
          ]
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){},child: const Icon(Icons.add),

         ),
      ),
    
  
    );
  }
}