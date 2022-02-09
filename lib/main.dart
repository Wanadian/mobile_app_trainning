import 'package:flutter/material.dart';
import './toDoList.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product presentation',
      theme: ThemeData(
      ),
      home: const ToDoList(title: "Wonkru Shop"),
      debugShowCheckedModeBanner: false,
    );
  }
}
