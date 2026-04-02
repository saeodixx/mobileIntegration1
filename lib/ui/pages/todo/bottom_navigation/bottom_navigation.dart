import 'package:example/ui/pages/todo/bottom_navigation/widget/nav_button.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      padding: .all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[300]!,
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children:
            [
                  (text: '홈', icon: Icons.home),
                  (text: '캘린더', icon: Icons.calendar_month),
                  (text: '통계', icon: Icons.bar_chart),
                  (text: '할 일', icon: Icons.person),
                ]
                .map(
                  (e) => Expanded(
                    child: NavButton(
                      selected: e.text == '홈',
                      icon: e.icon,
                      text: e.text,
                    ),
                  ),
                )
                .toList(),
      ),
    );
  }
}
