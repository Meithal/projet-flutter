import 'package:flutter/material.dart';

class User {
  final String name;
  final int age;

  const User(this.age, {required this.name});
}


void main() {
  const toto1 = User(42, name: 'toto');
  const toto2 = User(42, name: 'toto');

  var toto3 = const User(42, name: 'toto');
  var toto4 = const User(42, name: 'toto');

  debugPrint('toto1 == toto2 ${toto1 == toto2}');
  debugPrint('toto3 == toto4 ${toto3 == toto4}');
}