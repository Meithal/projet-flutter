import 'package:flutter/material.dart';
import 'widgets/bottom_bar.dart';
import 'tabs/home_tab.dart';
import 'tabs/settings_tab.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _text = 'Home';
  final _panels = ['Home', 'Settings'];
  int _currentIndex = 0;
  final _tabs = const [
    HomeTab(),
    SettingsTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'salut',
        ),
        leading: Container(
          color: Colors.red,
        ),
      ),
      body: _tabs[_currentIndex],
      bottomNavigationBar: CustomBottomBar(
        name: 'Toto',
        onTap: _onNewIndexClicked,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Center(
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  void _onNewIndexClicked(int val) {
    print('Coucou, new index is : $val');
    setState(() {
      _text = _panels[val];
      _currentIndex = val;
    });
  }
}
