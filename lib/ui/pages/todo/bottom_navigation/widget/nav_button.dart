import 'package:example/enum/process.dart';
import 'package:flutter/material.dart';

class NavButton extends StatelessWidget {
  final bool selected;
  final IconData icon;
  final String text;

  const NavButton({
    super.key,
    required this.selected,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: selected ? Process.done.primaryColor : Colors.transparent,
        borderRadius: .circular(50),
      ),

      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: selected ? Colors.white : Colors.grey),
            Text(
              text,
              style: TextStyle(color: selected ? Colors.white : Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
