import 'dart:js';

import 'package:flutter/material.dart';
import 'package:github_user_search_tool/provider/UserProvider.dart';
import 'package:provider/provider.dart';

import 'Screen/home.dart';

void main() {
  runApp(ChangeNotifierProvider<UserProvider>(
    create: (context) => UserProvider(),
    child: MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    ),
  ));
}
