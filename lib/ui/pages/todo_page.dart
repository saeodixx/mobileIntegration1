import 'package:example/ui/pages/todo/bottom_navigation/bottom_navigation.dart';
import 'package:example/ui/pages/todo/widget/filter_row.dart';
import 'package:example/ui/pages/todo/widget/progress_card.dart';
import 'package:example/ui/pages/todo/widget/title_content.dart';
import 'package:example/ui/pages/todo/widget/todo_list.dart';
import 'package:flutter/material.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            spacing: 24,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //타이틀 상단
              Header(),
              //할 일 리스트
              ProgressCard(),
              //할 일 필터
              FilterRow(),

              _buildTodoTitle(),

              //할 일 리스트
              TodoList(),

              //Costom Bottom Navigation Bar
              BottomNavigation(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildTodoTitle() {
  return Text(
    '오늘의 할 일',
    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
  );
}
