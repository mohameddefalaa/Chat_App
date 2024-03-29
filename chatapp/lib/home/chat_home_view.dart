import 'package:chatapp/Widgets/chats_body.dart';
import 'package:flutter/material.dart';

class Chat_View extends StatefulWidget {
  const Chat_View({super.key});

  @override
  State<Chat_View> createState() => _Chat_ViewState();
}

class _Chat_ViewState extends State<Chat_View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.message)),
      appBar: AppBar(
        centerTitle: true,
        title: Text('chats'),
      ),
      body: Chats_body(),
    );
  }
}
