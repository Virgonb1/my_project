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
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  Widget _buildInputButton(String label, String placeholder) {
    final Border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: Colors.grey),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            )),
        Container(
            height: 48,
            margin: EdgeInsets.only(top: 5),
            child: TextField(
                cursorColor: Colors.grey,
                decoration: InputDecoration(hintText: placeholder)))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }

  // Widget _buildButton(String label) {}
  // Widget _buildCircleButton(String label, Color color) {}
}
