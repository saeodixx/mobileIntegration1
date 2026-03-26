import 'package:flutter/material.dart';
import 'package:example/ui/pages/todo_page.dart';
import 'package:example/ui/pages/default_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(
          brightness: Brightness.light,
          seedColor: Colors.blue,
        ),
      ),
      home: const TodoPage(),
    );
  }
}
