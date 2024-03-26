import 'package:chatapp/Views/sign_up.dart';
import 'package:flutter/material.dart';

class ishavemessage extends StatelessWidget {
  const ishavemessage({
    super.key,
    required this.text,
    required this.ctextbutton,
    required this.onpresed,
  });
  final String text;
  final String ctextbutton;
  final void Function() onpresed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text),
        TextButton(onPressed: onpresed, child: Text(ctextbutton))
      ],
    );
  }
}
