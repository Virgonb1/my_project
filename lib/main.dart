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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Divider(),
            Container(
              // padding: EdgeInsets.all(20),
              child: (Stack(
                clipBehavior: Clip.none,
                // alignment: AlignmentDirectional.topCenter,
                children: [
                  Column(
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      ),
                  Positioned(
                    left: 10,
                    top: 10,
                    child:
                        Container(width: 100, height: 100, color: Colors.grey),
                  ),
                  Positioned(
                    left: 60,
                    top: 60,
                    child:
                        Container(width: 100, height: 100, color: Colors.blue),
                  ),
                  Positioned(
                    left: 110,
                    top: 110,
                    child:
                        Container(width: 100, height: 100, color: Colors.red),
                  ),
                  Positioned(
                    left: 160,
                    top: 160,
                    child:
                        Container(width: 100, height: 100, color: Colors.green),
                  ),
                  Positioned(
                    left: 210,
                    top: 210,
                    child:
                        Container(width: 100, height: 100, color: Colors.black),
                  ),
                  Positioned(
                    left: 260,
                    top: 260,
                    child:
                        Container(width: 100, height: 100, color: Colors.brown),
                  ),
                  Positioned(
                    left: 310,
                    top: 310,
                    child:
                        Container(width: 100, height: 100, color: Colors.pink),
                  ),
                  // Positioned(
                  //   left: 160,
                  //   top: 160,
                  //   child:
                  //       Container(width: 100, height: 100, color: Colors.purple),
                  // ),
                  // Positioned(
                  //   left: 160,
                  //   top: 160,
                  //   child:
                  //       Container(width: 100, height: 100, color: Colors.green),
                  // ),
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}
