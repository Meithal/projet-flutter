import 'package:flutter/material.dart';

class ScreenB extends StatelessWidget {

  static const String routeName = '/screenB';

  const ScreenB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen B'),
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
