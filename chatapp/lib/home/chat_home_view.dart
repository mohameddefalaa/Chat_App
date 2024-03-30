import 'package:chatapp/Widgets/Buttones/elevated_button.dart';
import 'package:chatapp/Widgets/custome_text_field.dart';
import 'package:chatapp/chat/chats_body.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Chat_View extends StatefulWidget {
  const Chat_View({super.key});

  @override
  State<Chat_View> createState() => _Chat_ViewState();
}

TextEditingController emailcontroller = TextEditingController();

class _Chat_ViewState extends State<Chat_View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showBottomSheet(
                context: context,
                builder: (context) {
                  return Container(
                    padding: EdgeInsets.all(20),
                    // width: double.infinity,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            Text('Enter your friend Email '),
                            const Spacer(),
                            IconButton.filled(
                                onPressed: () {},
                                icon: Icon(Iconsax.scan_barcode))
                          ],
                        ),
                        custome_textFormField(
                            hideicon: false,
                            ishidetext: false,
                            hintText: 'Email ',
                            customeicon: Icon(Icons.email),
                            controller: emailcontroller),
                        SizedBox(
                          height: 5,
                        ),
                        elevated_button(
                          onpresed: () {},
                          text: ' Creat a Chat',
                          color: Theme.of(context).colorScheme.primaryContainer,
                        ),
                      ],
                    ),
                  );
                });
          },
          child: Icon(Iconsax.message_add)),
      appBar: AppBar(
        centerTitle: true,
        title: Text('chats'),
      ),
      body: Chats_body(),
    );
  }
}
