import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_premier_projet/webservices/user.dart';
import 'package:http/http.dart' as http;

class WebService {

  static Future<List<User>> getAllUsers() async {
    await Future.delayed(const Duration(seconds: 2));
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    switch(response.statusCode) {
      case 200: {
        debugPrint('Response body: ${response.body}');
        final List<dynamic> usersJson = json.decode(response.body) as List<dynamic>;

        return usersJson.map((userJson) => User.fromJson(userJson)).toList();
      }
      default:
        throw Exception('Failed to load users');
    }
  }
}