import 'package:flutter/material.dart';
import 'package:main2_dart/model/chat_model.dart';

class ChatScreen extends StatelessWidget {
  Widget _buildItem(ChatItem itemchat) {
    final isSender = itemchat.isSender;
    return Container(
      width: double.infinity,
      alignment: isSender
          ? AlignmentDirectional.centerStart
          : AlignmentDirectional.centerEnd,
      child: Container(
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.only(
            left: isSender ? 16 : 150, right: isSender ? 150 : 16),
        decoration: BoxDecoration(
            color: isSender ? Colors.green : Colors.blueGrey,
            borderRadius: BorderRadius.circular(6)),
        child: Text(itemchat.chat),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    ChatModel item = ModalRoute.of(context)?.settings.arguments as ChatModel;
    final chats = item.Chats;
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            padding: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.add_a_photo_sharp,
              size: 26,
            ),
          ),
        ],
        title: Text(item.name),
      ),
      body: chats == null
          ? Center(
              child: Text('Khong co lich su chat'),
            )
          : SafeArea(
              child: Column(
                children: [
                  Expanded(
                    child: ListView.separated(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        itemCount: chats.length,
                        itemBuilder: (context, index) {
                          return _buildItem(chats[index]);
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: 10,
                          );
                        }),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    height: 46,
                    child: TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 12),
                          border: OutlineInputBorder(),
                          suffixIcon: Icon(Icons.send)),
                    ),
                  )
                ],
              ),
            ),
    );
  }
}
