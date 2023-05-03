import 'package:flutter/material.dart';
import 'package:flutter_premier_projet/lists/user.dart';
import 'package:flutter_premier_projet/lists/user_item.dart';

void main() {
  runApp(const ListsApp());
}

class ListsApp extends StatelessWidget {
  const ListsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ListHome());
  }
}

class ListHome extends StatelessWidget {
  ListHome({Key? key}) : super(key: key);

  final List<User> _items = List.generate(100, (index) {
    return User(
        firstName: 'First Name $index',
        lastName: 'Last name $index',
        address: 'Adress $index');
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.separated(
          itemCount: _items.length,
          itemBuilder: (context, index) {
            final user = _items[index];
            return UserItem(user: user);
          },
          separatorBuilder: (context, index) {
            return Container(
              height: 2,
              color: Colors.orange,
            );
          },
        ),
      ),
    );
  }
}
