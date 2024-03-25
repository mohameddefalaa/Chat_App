import 'package:chatapp/Widgets/Buttones/elevated_button.dart';
import 'package:chatapp/Widgets/Buttones/outlined_button.dart';
import 'package:chatapp/Widgets/Buttones/text_button.dart';
import 'package:chatapp/Widgets/Custome_line.dart';
import 'package:chatapp/Widgets/custome_text_field.dart';
import 'package:chatapp/constant.dart';
import 'package:chatapp/helpers/get_App_icon.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Login_View extends StatefulWidget {
  Login_View({
    super.key,
  });

  @override
  State<Login_View> createState() => _Login_ViewState();
}

class _Login_ViewState extends State<Login_View> {
  TextEditingController passcontroller = TextEditingController();
  TextEditingController emailcontrller = TextEditingController();
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GetAppIcon(),
                ],
              ),
              Text(
                'Welcome Back',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Text(
                'Hello  are you ready to chat, Enjoy ',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              custome_form(
                  emailcontrller: emailcontrller,
                  passcontroller: passcontroller),

              // const outlined_button(),
              const Custome_line(),
              Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.background,
                      shape: BoxShape.circle,
                      border: Border.all(
                          width: 2,
                          color: Theme.of(context).colorScheme.onBackground),
                    ),
                    child: ClipOval(
                      child: Icon(Icons.facebook_outlined),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

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
            customeicon: Icon(Icons.email),
          ),
          custome_textFormField(
            ishidetext: true,
            controller: passcontroller,
            hideicon: true,
            hintText: 'Password ',
            customeicon: Icon(Iconsax.password_check),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              text_button(),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: elevated_button(
              onpresed: () {
                if (formkey.currentState!.validate()) {
                  print('done');
                }
                ;
              },
            ),
          ),
        ],
      ),
    );
  }
}
