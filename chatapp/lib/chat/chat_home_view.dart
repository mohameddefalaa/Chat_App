import 'package:chatapp/Widgets/Buttones/elevated_button.dart';
import 'package:chatapp/Widgets/custome_text_field.dart';
import 'package:chatapp/chat/Custome_floating_button.dart';
import 'package:chatapp/chat/chat_Screen.dart';
import 'package:chatapp/chat/custome_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Chat_View extends StatefulWidget {
  const Chat_View({super.key});

  @override
  State<Chat_View> createState() => _Chat_ViewState();
}

TextEditingController emailcontroller = TextEditingController();

class _Chat_ViewState extends State<Chat_View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Custome_floating_action_button(),
      appBar: AppBar(
        centerTitle: true,
        title: Text('chats'),
      ),
      body: Custome_list_tile(
        ontap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return const Chat_Screen();
              },
            ),
          );
        },
        title: 'Mohaemed',
        subtitle: 'how are you ',
        nameorimae: 'M',
        num_unreading_message: 5,
      ),
    );
  }
}
