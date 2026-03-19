import 'package:flutter/material.dart';

class ProgressCard extends StatelessWidget {
  const ProgressCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: .all(10),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFF8B5CF6),
          borderRadius: .all(Radius.circular(24)),
        ),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            DefaultTextStyle(),

            SizedBox(height: 16),
            Text(
              '3/5',
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DefaultTextStyle extends StatelessWidget {
  const DefaultTextStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        Text('오늘의 진행률', style: TextStyle(fontSize: 15, color: Colors.white)),
        Text('60%', style: TextStyle(fontSize: 40, color: Colors.white)),
      ],
    );
  }
}
