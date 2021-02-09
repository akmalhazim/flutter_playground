import 'package:flutter/material.dart';
import 'package:imu_playground/todo_page.dart';

class RegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Register'),
        ),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(labelText: 'Full Name'),
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: 'Password'),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                          return TodoPage();
                        }));
                        // Scaffold.of(context)
                        //     .showSnackBar(SnackBar(content: Text('Logged in')));
                      },
                      child: Text('Login'))
                ],
              ),
            )
          ],
        ));
  }
}
