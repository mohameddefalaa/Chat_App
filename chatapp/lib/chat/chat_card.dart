import 'package:chatapp/Models/rom_model.dart';
import 'package:chatapp/chat/custome_list_tile.dart';
import 'package:flutter/material.dart';

class chat_card extends StatelessWidget {
  const chat_card({
    super.key,
    required this.widget,
    required this.item,
  });

  final Custome_list_tile widget;
  final RooModel item;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
          onTap: widget.ontap,
          title: Text(widget.title),
          subtitle: Text(item.lastMessage),
          leading: CircleAvatar(
            child: Text(widget.nameorimae),
          ),
          trailing: 1 / 1 == 0
              ? Badge(
                  label: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Text(widget.num_unreading_message.toString()),
                  ),
                  largeSize: 30,
                )
              : Text(item.lastMessageTime)),
    );
  }
}
