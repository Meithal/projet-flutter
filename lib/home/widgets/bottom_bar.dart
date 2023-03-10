import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  final String name;
  final void Function(int) onTap;

  const CustomBottomBar({
    Key? key,
    required this.name,
    required this.onTap,
  }) : super(key: key);

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: _onTap,
      items: [
        BottomNavigationBarItem(
          icon: const Icon(Icons.home),
          label: widget.name,
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),
      ],
    );
  }

  void _onTap(int newIndex) {
    print('new index: $_currentIndex');
    setState(() {
      widget.onTap(newIndex);
      _currentIndex = newIndex;
      print('ontap, new index is : $newIndex');
    });
  }
}
