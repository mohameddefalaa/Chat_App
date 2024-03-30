import 'package:chatapp/constant.dart';
import 'package:flutter/material.dart';

class elevated_button extends StatelessWidget {
  elevated_button(
      {super.key,
      required this.onpresed,
      required this.text,
      required this.color});
  void Function() onpresed;
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.all(16)),
      onPressed: onpresed,
      child: Center(
        child: Text(
          text,
          style: const TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
