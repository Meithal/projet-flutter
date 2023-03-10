import 'package:flutter/material.dart';

void main() {
  runApp(const ExerciceOne());
}

class ExerciceOne extends StatefulWidget {
  const ExerciceOne({Key? key}) : super(key: key);

  @override
  State<ExerciceOne> createState() => _ExerciceOneState();
}

class _ExerciceOneState extends State<ExerciceOne> {
  Color _selectedColor = Colors.amber;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: MySquare(
            color: _selectedColor,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.draw),
          onPressed: () {
            _onTap();
          },
        ),
      ),
    );
  }

  void _onTap() {
    setState(() {
      _selectedColor = _selectedColor == Colors.amber ? Colors.red : Colors.amber;
    });
  }
}

class MySquare extends StatelessWidget {
  final Color color;

  const MySquare({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
