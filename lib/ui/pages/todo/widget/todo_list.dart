import 'package:example/enum/process.dart';
import 'package:example/ui/pages/todo/widget/circle_check_box.dart';
import 'package:example/ui/pages/todo/widget/process_badge.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    final dummy = [
      (
        title: "운동하기",
        filter: "건강",
        time: DateTime.now(),
        process: Process.todo,
      ),
      (
        title: "저녁식사",
        filter: "건강",
        time: DateTime.now(),
        process: Process.done,
      ),
      (
        title: "대학교수업",
        filter: "공부",
        time: DateTime.now(),
        process: Process.doing,
      ),
    ];
    return ListView.separated(
      itemCount: dummy.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => SizedBox(height: 12),
      itemBuilder: (context, index) {
        final data = dummy[index];

        return Container(
          padding: EdgeInsets.symmetric(horizontal: 18, vertical: 20),
          decoration: BoxDecoration(
            color: Colors.grey[200]!,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            spacing: 15,
            children: [
              //체크박스
              CircleCheckBox(value: data.process == Process.done),

              //할 일
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data.title,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      '${data.filter} • ${DateFormat('HH:mm').format(data.time)}',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),

              //진행뱃지
              ProcessBadge(process: data.process),
            ],
          ),
        );
      },
    );
  }
}
