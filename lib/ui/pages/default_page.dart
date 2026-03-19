import 'package:flutter/material.dart';

class DefaultPage extends StatelessWidget {
  const DefaultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.home),
        title: const Text('예제 화면'),
      ),
      body: Row(
        children: [
          Expanded(
            child: Container(width: 100, height: 100, color: Colors.blue),
          ),
          Expanded(child: Container(color: Colors.red)),
          Expanded(child: Container(color: Colors.yellow)),
        ],
      ),
    );
  }
}
