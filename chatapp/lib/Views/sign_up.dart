import 'package:chatapp/Widgets/Buttones/elevated_button.dart';
import 'package:chatapp/Widgets/Custom_form.dart';
import 'package:chatapp/Widgets/custome_final_message.dart';
import 'package:chatapp/Widgets/custome_text_field.dart';
import 'package:chatapp/Widgets/social;_media.dart';
import 'package:chatapp/chat/chat_home_view.dart';
import 'package:chatapp/constant.dart';
import 'package:chatapp/firebase/firebase_Auth/fire_auth.dart';
import 'package:chatapp/helpers/get_App_icon.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class signup_view extends StatelessWidget {
  signup_view({super.key});
  TextEditingController Econtroller = TextEditingController();
  TextEditingController Pcontroller = TextEditingController();
  TextEditingController Ncontroller = TextEditingController();

  @override
  final formkey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Text(
                'Create an acount',
                style: Theme.of(context).textTheme.displaySmall,
                selectionColor: Theme.of(context).colorScheme.onBackground,
              ),
              Text(
                'Welcome! please enter your details.',
                style: Theme.of(context).textTheme.bodyLarge,
                selectionColor: Theme.of(context).colorScheme.onBackground,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Form(
                  key: formkey,
                  child: Column(
                    children: [
                      custome_textFormField(
                          hideicon: false,
                          ishidetext: false,
                          hintText: 'Enter your name',
                          customeicon: const Icon(Iconsax.user),
                          controller: Ncontroller),
                      custome_textFormField(
                          hideicon: false,
                          ishidetext: false,
                          hintText: 'Enter your email',
                          customeicon: const Icon(Iconsax.direct),
                          controller: Econtroller),
                      custome_textFormField(
                          hideicon: true,
                          ishidetext: true,
                          hintText: 'Enter your password',
                          customeicon: const Icon(Iconsax.password_check),
                          controller: Pcontroller),
                      const SizedBox(
                        height: 20,
                      ),
                      elevated_button(
                        color: kPrimarrycolor,
                        onpresed: () {
                          if (formkey.currentState!.validate()) {
                            try {
                              signup_user().then((value) {
                                if (Ncontroller.text.isNotEmpty) {
                                  FirebaseAuth.instance.currentUser!
                                      .updateDisplayName(Ncontroller.text)
                                      .then((value) => fireauth.createuser());
                                }
                              });
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text("create account is done....  "),
                                ),
                              );
                            } on FirebaseAuthException catch (e) {
                              if (e.code == 'weak-password') {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                        "The password provided is too weak."),
                                  ),
                                );
                              } else if (e.code == 'email-already-in-use') {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                        "The account already exists for that email."),
                                  ),
                                );
                              }
                            } catch (e) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                      "we have error which is ${e.toString()}"),
                                ),
                              );
                            }
                            ;
                          }
                        },
                        text: 'Sign Up',
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        child: Social_media_obtions(
                          Text1: 'Sign Up With Google',
                          Text2: 'Sign Up  With Facebook',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              ishavemessage(
                  text: 'Already have an account',
                  ctextbutton: 'Log in',
                  onpresed: () {
                    Navigator.pop(context);
                  }),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> signup_user() async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: Econtroller.text,
      password: Pcontroller.text,
    );
  }
}
