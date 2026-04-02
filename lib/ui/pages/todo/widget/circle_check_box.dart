import 'package:example/enum/process.dart';
import 'package:flutter/material.dart';

class CircleCheckBox extends StatelessWidget {
  final bool value;

  const CircleCheckBox({super.key, this.value = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: value ? Process.done.primaryColor : Colors.grey[100]!,
        border: value ? null : Border.all(color: Colors.grey[300]!, width: 2),
      ),
      child: value
          ? const Icon(Icons.check, size: 16, color: Colors.white)
          : null,
    );
  }
}
