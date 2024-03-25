import 'package:chatapp/Widgets/Buttones/outlined_button.dart';
import 'package:flutter/material.dart';

class Social_media_obtions extends StatelessWidget {
  const Social_media_obtions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        outlined_button(
          onpresed: () {},
          text: 'Log in With Google',
          image: 'assets/icons/search.png',
        ),
        const SizedBox(
          height: 10,
        ),
        outlined_button(
          onpresed: () {},
          text: 'Log in With Facebook ',
          image: 'assets/icons/facebook.png',
        ),
      ],
    );
  }
}
