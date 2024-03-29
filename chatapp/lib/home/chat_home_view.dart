import 'package:chatapp/chat/chats_body.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Chat_View extends StatefulWidget {
  const Chat_View({super.key});

  @override
  State<Chat_View> createState() => _Chat_ViewState();
}

class _Chat_ViewState extends State<Chat_View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {}, child: Icon(Iconsax.message_add)),
      appBar: AppBar(
        centerTitle: true,
        title: Text('chats'),
      ),
      body: Chats_body(),
    );
  }
}
