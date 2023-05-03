import 'package:flutter/material.dart';
import 'package:flutter_premier_projet/webservices/user.dart';
import 'package:flutter_premier_projet/webservices/webservice.dart';

void main() {
  runApp(WebservicesApp());
}

class WebservicesApp extends StatelessWidget {
  const WebservicesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WebservicesHome(),
    );
  }
}

class WebservicesHome extends StatefulWidget {
  const WebservicesHome({Key? key}) : super(key: key);

  @override
  State<WebservicesHome> createState() => _WebservicesHomeState();
}

class _WebservicesHomeState extends State<WebservicesHome> {
  bool _loading = true;
  List<User> _users = [];
  String? _error;

  void _getAllUsers() async {
    final users = await WebService.getAllUsers();
    debugPrint('users : $users');
  }

  @override
  void initState() {
    super.initState();
    _init();
  }

  void _init() async {
    try {
      final users = await WebService.getAllUsers();
      setState(() {
        _loading = false;
        _users.clear();
        _users.addAll(users);
      });
    } catch (error) {
      setState(() {
        _loading = false;
        _error = 'Une erreur est survenue $error';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Text('Coucou'),
            const Spacer(
              flex: 1,
            ),
            ElevatedButton(
              onPressed: _getAllUsers,
              child: const Text('Get users'),
            ),
          ],
        ),
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    if (_loading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    if (_error != null) {
      return Center(
        child: Text(_error ?? ''),
      );
    }

    if (_users.isEmpty) {
      return const Center(
        child: Text('Oops, aucun utilisateur'),
      );
    }

    return ListView.builder(
        itemCount: _users.length,
        itemBuilder: (context, index) {
          final user = _users[index];
          return ListTile(
            title: Text(user.userName),
          );
        });
  }
}
