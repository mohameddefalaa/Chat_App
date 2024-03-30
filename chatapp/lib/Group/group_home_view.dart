import 'package:chatapp/chat/ustome_list_tile.dart';
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
      appBar: AppBar(
        title: Text('groups view '),
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
