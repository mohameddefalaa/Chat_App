import 'package:chatapp/Widgets/custome_Button.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
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
              custome_textFormField(
                controller: emailcontrller,
                ispass: false,
                hintText: 'Email ',
                customeicon: Icon(Icons.email),
              ),
              custome_textFormField(
                controller: passcontroller,
                ispass: true,
                hintText: 'Password ',
                customeicon: Icon(Iconsax.password_check),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forget Password?",
                        style: Theme.of(context).textTheme.labelLarge,
                      )),
                ],
              ),
              custome_Button(
                kPrimarrycolor,
                text: 'LOGIN',
              ),
              custome_Button(
                Colors.black,
                text: 'LOGIN',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
