import 'package:chatapp/chat/mesage_text_filed.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Chat_Screen extends StatefulWidget {
  const Chat_Screen({super.key});

  @override
  State<Chat_Screen> createState() => _Chat_ScreenState();
}

class _Chat_ScreenState extends State<Chat_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Mohamed'),
            Text(
              'Online',
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Iconsax.trash)),
          IconButton(onPressed: () {}, icon: Icon(Iconsax.copy)),
        ],
      ),
      body: const Message_Text_filed(),
    );
  }
}
