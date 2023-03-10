import 'package:flutter/material.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Center(
        child: Text(
          'Settings',
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
    );
  }
}
