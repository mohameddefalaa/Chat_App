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
    );
  }
}
