import 'package:chatapp/constant.dart';
import 'package:flutter/material.dart';

class elevated_button extends StatelessWidget {
  const elevated_button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: kPrimarrycolor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.all(16)),
      onPressed: () {},
      child: const Center(
        child: Text(
          'LOGIN',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
