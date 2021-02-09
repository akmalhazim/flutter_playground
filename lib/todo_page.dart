import 'package:flutter/material.dart';
import 'package:imu_playground/add_todo_page.dart';
import 'package:imu_playground/models/todo.dart';
import 'package:provider/provider.dart';

class TodoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo'),
      ),
      body: Consumer(builder: (BuildContext context, Todo todo, child) {
        return ListView.builder(
          itemBuilder: (BuildContext context, i) {
            return ListTile(
              title: Text(todo.tasks[i].task),
            );
          },
          itemCount: todo.tasks.length,
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return AddTodoPage();
          }));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
