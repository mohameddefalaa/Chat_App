import 'package:flutter/material.dart';

class text_button extends StatelessWidget {
  const text_button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        "Forget Password?",
        style: Theme.of(context).textTheme.labelLarge,
      ),
    );
  }
}
