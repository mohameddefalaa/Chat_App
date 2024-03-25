import 'package:flutter/material.dart';

class Custome_line extends StatelessWidget {
  const Custome_line({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 1,
          child: Divider(
            color: Theme.of(context).colorScheme.onBackground,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            'Or',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        Flexible(
          flex: 1,
          child: Divider(
            color: Theme.of(context).colorScheme.onBackground,
          ),
        ),
      ],
    );
  }
}
