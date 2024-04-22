import 'package:chatapp/Models/rom_model.dart';
import 'package:chatapp/Widgets/Buttones/elevated_button.dart';
import 'package:chatapp/Widgets/custome_text_field.dart';
import 'package:chatapp/chat/chat_home_view.dart';
import 'package:chatapp/firebase/Fire_databas.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Custome_floating_action_button extends StatefulWidget {
  Custome_floating_action_button({
    super.key,
  });

  @override
  State<Custome_floating_action_button> createState() =>
      _Custome_floating_action_buttonState();
}

class _Custome_floating_action_buttonState
    extends State<Custome_floating_action_button> {
  final TextEditingController emailcontroller = TextEditingController();

  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
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
                      Form(
                        key: formkey,
                        child: custome_textFormField(
                            hideicon: false,
                            ishidetext: false,
                            hintText: 'Email ',
                            customeicon: Icon(Icons.email),
                            controller: emailcontroller),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      elevated_button(
                        onpresed: () {
                          if (formkey.currentState!.validate()) {
                            firedata()
                                .creatRoom(emailcontroller.text)
                                .then((value) {
                              setState(() {
                                emailcontroller.text = '';
                              });
                              Navigator.pop(context);
                            });
                          }
                        },
                        text: ' Creat a Chat',
                        color: Theme.of(context).colorScheme.primaryContainer,
                      ),
                    ],
                  ),
                );
              });
        },
        child: Icon(Iconsax.message_add));
  }
}
