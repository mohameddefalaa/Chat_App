import 'package:flutter/material.dart';

class Seetings_view extends StatefulWidget {
  const Seetings_view({super.key});

  @override
  State<Seetings_view> createState() => _Seetings_viewState();
}

class _Seetings_viewState extends State<Seetings_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('seetings '),
      ),
    );
  }
}
