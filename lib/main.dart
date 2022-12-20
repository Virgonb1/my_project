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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget _buildInputItem(String label, String placeholder) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        Container(
          height: 48,
          margin: EdgeInsets.only(top: 10),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.grey),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.grey),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildButton(String label) {
    return Container(
      height: 48,
      decoration: BoxDecoration(
          color: Colors.pink, borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Text(
          label,
          style: TextStyle(
              fontSize: 26, fontWeight: FontWeight.w700, color: Colors.white),
        ),
      ),
    );
  }

//
  Widget _buildCirleButton(String label, Color color) {
    return Container(
        height: 48,
        width: 46,
        decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(width: 3, color: color),
            shape: BoxShape.circle),
        child: Center(
            child: Text(
          label,
          style: (TextStyle(
              fontSize: 20, fontWeight: FontWeight.w900, color: color)),
        )));
  }

  Widget _buildAlreadyUser() {
    return RichText(
      text: TextSpan(
          text: 'A readly User?',
          style: TextStyle(
              color: Colors.grey, fontSize: 18, fontWeight: FontWeight.w400),
          children: [
            TextSpan(
              text: 'LOGIN',
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 20,
                  fontWeight: FontWeight.w900),
            )
          ]),
    );
  }

  Widget get _spacerWidth => SizedBox(width: 10);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: SafeArea(
            child: Center(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 10,
                )
              ],
            ),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sign up',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                  ),

                  Padding(padding: const EdgeInsets.only(top: 25)),
                  // build email , password.
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: _buildInputItem('Email', 'Enter your email'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: _buildInputItem('Password', 'Enter your Password'),
                  ),
                  // build sign up.
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: _buildButton('Sign up'),
                  ),
                  // build login (fb, gg, ing).
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildCirleButton('G', Colors.redAccent),
                        _spacerWidth,
                        _buildCirleButton('F', Colors.blue),
                        _spacerWidth,
                        _buildCirleButton('In', Colors.purple),
                        _spacerWidth,
                      ],
                    ),
                  ),
                  // build Login.
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Center(child: _buildAlreadyUser()),
                  ),
                ]),
          ),
        )));
  }
}
