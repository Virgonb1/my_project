import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:main2_dart/chat/chat_screen.dart';
import 'package:main2_dart/model/chat_model.dart';
import 'package:main2_dart/utils/consts.dart';

import 'utils/screen_const.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(),
      routes: {
        '/home': (context) => MyHomePage(),
        RouteNames.CHAT_SCREEN: (context) => ChatScreen(),
      },
      initialRoute: '/',
    );
  }
}

class MyHomePage extends StatelessWidget {
  Widget _buildItem(BuildContext context, ChatModel item) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(RouteNames.CHAT_SCREEN, arguments: item);
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Row(
          children: [
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                  color: Colors.transparent, shape: BoxShape.circle),
              height: 60,
              width: 60,
              child: Image.asset(
                item.avatar,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item.name),
                  Text(item.chat),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  final list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Messenger')),
      body: Column(
        children: [
          Container(
              height: 55,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.symmetric(horizontal: 12)),
              )),
          Container(
            height: 125,
            padding: EdgeInsets.only(top: 8),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              padding: EdgeInsets.symmetric(horizontal: 16),
              itemBuilder: (context, index) {
                return _buildActiveItem();
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: 10,
                );
              },
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: listChat.length,
              itemBuilder: (context, index) {
                final item = listChat[index];
                return _buildItem(context, item);
              },
              separatorBuilder: (context, index) {
                return Container(
                  height: 5,
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Chats'),
          BottomNavigationBarItem(icon: Icon(Icons.camera), label: 'Setting'),
        ],
      ),
    );
  }

  Widget _buildActiveItem() {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(),
              shape: BoxShape.circle),
          padding: EdgeInsets.all(2),
          margin: EdgeInsets.only(bottom: 3),
          child: Center(
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/gai.jpg'),
                    fit: BoxFit.cover,
                  )),
            ),
          ),
        ),
        Text('Baby'),
      ],
    );
  }
}
