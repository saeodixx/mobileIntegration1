import 'package:flutter/material.dart';
import 'package:example/ui/pages/todo/widget/title_content.dart';
import 'package:example/ui/pages/todo/widget/progress_card.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              //타이틀 상단
              Header(),
              //할 일 리스트
              ProgressCard(),
            ],
          ),
        ),
      ),
    );
  }
}
