import 'package:flutter/material.dart';

class Contact_View extends StatefulWidget {
  const Contact_View({super.key});

  @override
  State<Contact_View> createState() => _Contact_ViewState();
}

class _Contact_ViewState extends State<Contact_View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('contact '),
      ),
    );
  }
}
