import 'package:chatapp/constant.dart';
import 'package:flutter/material.dart';

class elevated_button extends StatelessWidget {
  elevated_button({super.key, required this.onpresed, required this.text});
  void Function() onpresed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: kPrimarrycolor,
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
