import 'package:chatapp/constant.dart';
import 'package:flutter/material.dart';

class elevated_button extends StatelessWidget {
  elevated_button({super.key, required this.onpresed});
  void Function() onpresed;
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
      child: const Center(
        child: Text(
          'LOGIN',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
