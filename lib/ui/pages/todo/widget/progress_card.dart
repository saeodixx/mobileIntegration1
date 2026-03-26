import 'package:flutter/material.dart';

class ProgressCard extends StatelessWidget {
  const ProgressCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .all(24),
      decoration: BoxDecoration(
        color: Colors.deepPurpleAccent,
        borderRadius: .all(.circular(24)),
      ),
      child: Column(
        spacing: 15,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //오늘의 진행률 텍스트
          DefaultTextStyle(
            style: TextStyle(color: Colors.white),
            child: Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Text(
                  '오늘의 진행률',
                  style: TextStyle(fontSize: 16, fontWeight: .w700),
                ),
                Text('60%', style: TextStyle(fontSize: 30, fontWeight: .bold)),
              ],
            ),
          ),
          //progress bar
          SizedBox(
            height: 8,
            child: LinearProgressIndicator(
              value: 0.6,
              borderRadius: .circular(10),
              year2023: false,
              color: Colors.white,
              backgroundColor: Colors.white.withValues(alpha: 0.2),
            ),
          ),
          //완료 텍스트
          Text(
            '10개 중 6개 완료',
            style: TextStyle(
              fontSize: 14,
              color: Colors.white.withValues(alpha: 0.6),
            ),
          ),
        ],
      ),
    );
  }
}
