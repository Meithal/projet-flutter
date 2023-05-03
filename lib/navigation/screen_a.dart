import 'package:flutter/material.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen A'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _goBack(context),
          child: const Text('Go back'),
        ),
      ),
    );
  }

  void _goBack(context) {
    Navigator.of(context).pop();
  }
}
