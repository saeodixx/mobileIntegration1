import 'package:flutter/material.dart';

enum Process { todo, doing, done }

extension ProcessExtension on Process {
  Color get primaryColor => switch (this) {
    Process.done => const Color.fromARGB(255, 164, 33, 190),
    Process.doing => const Color.fromARGB(255, 19, 159, 77),
    Process.todo => const Color.fromARGB(255, 228, 85, 192),
  };

  Color get secondaryColor => switch (this) {
    Process.done => const Color(0x208B5CF6),
    Process.doing => const Color(0x2014B8A6),
    Process.todo => const Color(0x20F472B6),
  };

  String get title => switch (this) {
    Process.done => '완료',
    Process.doing => '진행 중',
    Process.todo => '할 일',
  };
}
