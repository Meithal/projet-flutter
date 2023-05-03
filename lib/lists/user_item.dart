import 'package:flutter/material.dart';
import 'package:flutter_premier_projet/lists/user.dart';

class UserItem extends StatelessWidget {
  final User user;

  const UserItem({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VoidCallback? _onTap;

    // return ListFile(
    //   title: Text(
    //     user.firstName,
    //   ),
    //   onTap: _onTap
    // );
    return const Placeholder();
  }
}
