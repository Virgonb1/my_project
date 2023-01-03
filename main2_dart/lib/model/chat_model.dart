class ChatModel {
  final String avatar;
  final String name;
  final String chat;
  final List<ChatItem>? Chats;

  ChatModel(
      {required this.avatar,
      required this.name,
      required this.chat,
      this.Chats});
}

final listChat = [
  ChatModel(avatar: 'assets/gai.jpg', name: 'Vu', chat: 'Hallo', Chats: [
    ChatItem(true, 'di danh bi a khong?'),
    ChatItem(false, 'choi'),
    ChatItem(true, 'may gio?'),
    ChatItem(false, '8h de'),
  ]),
  ChatModel(avatar: 'assets/gai.jpg', name: 'Hoang', chat: 'Dang lam gi day'),
  ChatModel(avatar: 'assets/gai.jpg', name: 'Tra My', chat: 'Dang lam gi day'),
  ChatModel(avatar: 'assets/gai.jpg', name: 'Hoang', chat: 'Dang lam gi day'),
  ChatModel(avatar: 'assets/gai.jpg', name: 'Hoang', chat: 'Dang lam gi day'),
  ChatModel(avatar: 'assets/gai.jpg', name: 'Hoang', chat: 'Dang lam gi day'),
  ChatModel(avatar: 'assets/gai.jpg', name: 'Hoang', chat: 'Dang lam gi day'),
  ChatModel(avatar: 'assets/gai.jpg', name: 'Hoang', chat: 'Dang lam gi day'),
];

class ChatItem {
  final bool isSender;
  final String chat;

  ChatItem(this.isSender, this.chat);
}
