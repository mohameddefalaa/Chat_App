import 'package:chatapp/Widgets/Custome_text_field.dart';
import 'package:chatapp/helpers/get_App_icon.dart';
import 'package:flutter/material.dart';

class Login_View extends StatefulWidget {
  const Login_View({super.key});

  @override
  State<Login_View> createState() => _Login_ViewState();
}

class _Login_ViewState extends State<Login_View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GetAppIcon(),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Welcome Back',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Text(
                'Hello  are you ready to chat, Enjoy ',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(
                height: 10,
              ),
              custome_textFormField(
                hintText: 'Email ',
                customeicon: Icon(Icons.email),
              ),
              const SizedBox(
                height: 20,
              ),
              custome_textFormField(
                hintText: 'Password ',
                customeicon: Icon(Icons.password),
              ),
              const SizedBox(
                height: 10,
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
