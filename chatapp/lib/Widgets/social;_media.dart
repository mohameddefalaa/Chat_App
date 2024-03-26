import 'package:chatapp/Widgets/Buttones/outlined_button.dart';
import 'package:flutter/material.dart';

class Social_media_obtions extends StatelessWidget {
  const Social_media_obtions({
    super.key,
    required this.Text1,
    required this.Text2,
  });
  final String Text1;
  final String Text2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        outlined_button(
          onpresed: () {},
          text: Text1,
          image: 'assets/icons/search.png',
        ),
        const SizedBox(
          height: 10,
        ),
        outlined_button(
          onpresed: () {},
          text: Text2,
          image: 'assets/icons/facebook.png',
        ),
      ],
    );
  }
}
