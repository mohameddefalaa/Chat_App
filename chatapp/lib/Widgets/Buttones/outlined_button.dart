import 'package:flutter/material.dart';

class outlined_button extends StatelessWidget {
  const outlined_button(
      {super.key,
      required this.image,
      required this.text,
      required this.onpresed});
  final String text;
  final String image;
  final void Function() onpresed;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        padding: EdgeInsets.all(16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              height: 25,
              width: 25,
            ),
            SizedBox(
              width: 10,
            ),
            Center(
              child: Text(
                text,
                style: TextStyle(
                    color: Theme.of(context).colorScheme.onBackground,
                    fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
