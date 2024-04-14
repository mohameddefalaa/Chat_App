import 'package:chatapp/Views/layoutapp.dart';
import 'package:chatapp/Widgets/Buttones/elevated_button.dart';
import 'package:chatapp/Widgets/Buttones/text_button.dart';
import 'package:chatapp/Widgets/custome_text_field.dart';
import 'package:chatapp/constant.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class custome_form extends StatelessWidget {
  custome_form({
    super.key,
    required this.emailcontrller,
    required this.passcontroller,
  });

  final TextEditingController emailcontrller;
  final TextEditingController passcontroller;

  @override
  final formkey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Column(
        children: [
          custome_textFormField(
            hideicon: false,
            ishidetext: false,
            controller: emailcontrller,
            hintText: 'Email ',
            customeicon: const Icon(Icons.email),
          ),
          custome_textFormField(
            ishidetext: true,
            controller: passcontroller,
            hideicon: true,
            hintText: 'Password ',
            customeicon: const Icon(Iconsax.password_check),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              text_button(),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: elevated_button(
              color: kPrimarrycolor,
              text: 'Log In',
              onpresed: () {
                if (formkey.currentState!.validate()) {
                  try {
                    login_user();
                  } on FirebaseAuthException catch (e) {
                    if (e.code == 'user-not-found') {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('No user found for that email.'),
                        ),
                      );
                    } else if (e.code == 'wrong-password') {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content:
                              Text('Wrong password provided for that user.'),
                        ),
                      );
                    }
                  }
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  Future<UserCredential> login_user() async {
    return await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailcontrller.text, password: passcontroller.text);
  }
}
