import 'package:flutter/material.dart';
import 'package:imu_playground/models/todo.dart';
import 'package:imu_playground/todo_page.dart';
import 'package:provider/provider.dart';

class AddTodoPage extends StatefulWidget {
  @override
  _AddTodoPageState createState() => _AddTodoPageState();
}

class _AddTodoPageState extends State<AddTodoPage> {
  String task = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add To Do'),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(labelText: 'Task'),
            onChanged: (String value) {
              setState(() {
                task = value;
              });
            },
          ),
          RaisedButton(
            onPressed: () {
              Provider.of<Todo>(context, listen: false).addTask(Task(task));
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (BuildContext context) {
                return TodoPage();
              }));
            },
            child: Text('Add Task'),
          )
        ],
      ),
    );
  }
}
