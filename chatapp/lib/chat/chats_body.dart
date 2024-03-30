import 'package:chatapp/chat/chat_Screen.dart';
import 'package:flutter/material.dart';

class Chats_body extends StatelessWidget {
  const Chats_body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(children: [
        Expanded(
          child: ListView.builder(itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const Chat_Screen();
                  }));
                },
                title: Text('Mohamed'),
                subtitle: Text('how are you ?'),
                leading: CircleAvatar(),
                trailing: Badge(
                  label: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Text('3'),
                  ),
                  largeSize: 30,
                ),
              ),
            );
          }),
        ),
      ]),
    );
  }
}