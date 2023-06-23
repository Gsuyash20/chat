import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final String receiverEmail;
  final String receiverUserID;
  const ChatScreen(
      {super.key, required this.receiverEmail, required this.receiverUserID});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat'),
      ),
    );
  }
}
