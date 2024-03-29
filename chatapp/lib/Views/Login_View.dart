import 'package:chatapp/Views/sign_up.dart';
import 'package:chatapp/Widgets/Buttones/elevated_button.dart';
import 'package:chatapp/Widgets/Buttones/outlined_button.dart';
import 'package:chatapp/Widgets/Buttones/text_button.dart';
import 'package:chatapp/Widgets/Custom_form.dart';
import 'package:chatapp/Widgets/Custome_line.dart';
import 'package:chatapp/Widgets/custome_final_message.dart';
import 'package:chatapp/Widgets/custome_text_field.dart';
import 'package:chatapp/Widgets/social;_media.dart';
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
      // appBar: AppBar(),
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
                ' Back',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Text(
                'Log in to your account ',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              custome_form(
                  emailcontrller: emailcontrller,
                  passcontroller: passcontroller),
              const Social_media_obtions(
                Text1: 'Log in With Google',
                Text2: 'Log in With Facebook',
              ),
              const SizedBox(
                height: 80,
              ),
              ishavemessage(
                text: 'Dont have an account ',
                ctextbutton: 'Sign UP',
                onpresed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return signup_view();
                  }));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
