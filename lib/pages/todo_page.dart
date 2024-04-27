// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  TextEditingController myController = TextEditingController();
  //gretting message variable
  String greetingMessage = "";

  //greet user method
  void greetUser() {
    String userName = myController.text;
    setState(() {
      greetingMessage = "hello," + userName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //greet user message
            Text(greetingMessage),
            //textfield
            TextField(
              controller: myController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "type your name...",
              ),
            ),
            ElevatedButton(onPressed: greetUser, child: Text("Tap"))
          ],
        ),
      ),
    ));
  }
}
