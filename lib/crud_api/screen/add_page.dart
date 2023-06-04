import 'package:flutter/material.dart';

class AddTodoPage extends StatefulWidget {
  const AddTodoPage({Key? key}) : super(key: key);

  @override
  State<AddTodoPage> createState() => _AddTodoPageState();
}

class _AddTodoPageState extends State<AddTodoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Todo Page",
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TextField(
            decoration: InputDecoration(hintText: 'title'),
          ),
          TextField(
            decoration: InputDecoration(hintText: 'Description'),
            minLines: 5,
            maxLines: 9,
          ),
          SizedBox(height: 15,),
          ElevatedButton(
              onPressed: (){},
              child: Text('Submit')),
        ],
      ),
    );
  }
}

