import 'package:flutter/material.dart';

void main() {
  runApp(const ExerciceOne());
}

class ExerciceOne extends StatelessWidget {
  const ExerciceOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: MySquare(),
        ),
      ),
    );
  }
}

class MySquare extends StatefulWidget {
  const MySquare({Key? key}) : super(key: key);

  @override
  State<MySquare> createState() => _MySquareState();
}

class _MySquareState extends State<MySquare> {
  Color _color = Colors.amber;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (TapDownDetails tapDownDetails) {
        print('coucou');
        setState(() {
          _color = Colors.red;
        });
      },
      onTapUp: (TapUpDetails tapUpDetails) {
        print('coucou');
        setState(() {
          _color = Colors.amber;
        });
      },
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: _color,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
