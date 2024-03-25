import 'package:flutter/material.dart';

class custome_Button extends StatefulWidget {
  custome_Button(this.thecolor, {super.key, required this.text});
  Color thecolor;
  String text;
  @override
  State<custome_Button> createState() => _custome_ButtonState();
}

class _custome_ButtonState extends State<custome_Button> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: widget.thecolor),
      child: Center(
          child: Text(
        widget.text,
        style: Theme.of(context).textTheme.titleLarge,
      )),
    );
  }
}
