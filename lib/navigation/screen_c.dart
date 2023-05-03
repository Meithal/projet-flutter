import 'package:flutter/material.dart';

class ScreenC extends StatelessWidget {

  static const String routeName = '/screenC';

  final int id;

  const ScreenC({Key? key, required this.id}) : super(key: key);

  static void navigateTo(BuildContext context, int id) {
    Navigator.of(context).pushNamed(
      ScreenC.routeName,
      arguments: id,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen C : $id'),
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
