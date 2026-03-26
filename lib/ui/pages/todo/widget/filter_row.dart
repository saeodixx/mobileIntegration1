import 'package:flutter/material.dart';

class FilterRow extends StatelessWidget {
  FilterRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,

      child: Row(
        spacing: 8,
        children: [
          _buildFilter(isSelected: true, text: '전체'),
          _buildFilter(isSelected: false, text: '업무'),
          _buildFilter(isSelected: false, text: '개인'),
          _buildFilter(isSelected: false, text: '건강'),
        ],
      ),
    );
  }
}

Widget _buildFilter({bool isSelected = false, String text = ''}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    decoration: BoxDecoration(
      color: isSelected ? Colors.deepPurpleAccent : Colors.grey[300]!,
      borderRadius: .all(.circular(50)),
    ),
    child: Text(
      text,
      style: isSelected
          ? TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            )
          : TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
    ),
  );
}
