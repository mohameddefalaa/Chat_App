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
            thickness: 0.9,
            color: Theme.of(context).colorScheme.onBackground,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            'or',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 16,
            ),
          ),
        ),
        Flexible(
          flex: 1,
          child: Divider(
            thickness: 0.9,
            color: Theme.of(context).colorScheme.onBackground,
          ),
        ),
      ],
    );
  }
}
