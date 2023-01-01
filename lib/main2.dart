import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  Widget _buildItem() {
    return Container(
      color: [
        Colors.blue,
        Colors.red,
        Colors.pink,
        Colors.purple,
        Colors.yellow
      ][Random().nextInt(5)],
      height: 100,
    );
  }

  final List = [1, 2, 3, 4, 5, 6, 7, 8];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('My Messenger')),
        body: ListView.builder(
          itemBuilder: ((context, index) {
          return _buildItem(
          
          );
        })));
  }
}
