import 'package:chatapp/Widgets/Buttones/elevated_button.dart';
import 'package:chatapp/Widgets/Buttones/outlined_button.dart';
import 'package:chatapp/Widgets/Buttones/text_button.dart';
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
  bool ishidden = false;
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
              custome_textFormField(
                ishidetext: false,
                controller: emailcontrller,
                hintText: 'Email ',
                customeicon: Icon(Icons.email),
              ),
              custome_textFormField(
                ishidetext: true,
                controller: passcontroller,
                hideicon: IconButton(
                    onPressed: () {
                      setState(() {
                        ishidden = !ishidden;
                      });
                    },
                    icon: ishidden
                        ? const Icon(Icons.visibility)
                        : const Icon(Icons.visibility_off)),
                hintText: 'Password ',
                customeicon: Icon(Iconsax.password_check),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  text_button(),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: elevated_button(),
              ),
              const outlined_button()
            ],
          ),
        ),
      ),
    );
  }
}
