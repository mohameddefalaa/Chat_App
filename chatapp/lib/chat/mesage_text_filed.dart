import 'package:flutter/material.dart';

class Message_Text_filed extends StatelessWidget {
  const Message_Text_filed({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Card(
            child: TextFormField(
              decoration: InputDecoration(
                  suffixIcon: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.emoji_emotions),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.image),
                      ),
                    ],
                  ),
                  contentPadding: EdgeInsets.all(16),
                  border: InputBorder.none,
                  hintText: 'Message'),
              maxLines: 5,
              minLines: 1,
            ),
          ),
        ),
        IconButton.filled(onPressed: () {}, icon: Icon(Icons.send)),
      ],
    );
  }
}
