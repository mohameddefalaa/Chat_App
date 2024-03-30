import 'package:chatapp/Group/create_group_screen.dart';
import 'package:chatapp/chat/custome_list_tile.dart';
import 'package:flutter/material.dart';

class Group_View extends StatefulWidget {
  const Group_View({super.key});

  @override
  State<Group_View> createState() => _Group_ViewState();
}

class _Group_ViewState extends State<Group_View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return create_group_screen();
              },
            ),
          );
        },
        child: Icon(Icons.group_add),
      ),
      appBar: AppBar(
        title: Text('Groups  '),
      ),
      body: Custome_list_tile(
        ontap: () {},
        title: 'Family',
        subtitle: "emad: miss all of you ",
        nameorimae: 'F',
      ),
    );
  }
}
