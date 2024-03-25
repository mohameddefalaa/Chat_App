import 'package:chatapp/constant.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class custome_textFormField extends StatefulWidget {
  custome_textFormField({
    this.ispass = true,
    required this.hintText,
    required this.customeicon,
    required this.controller,
  });
  final String hintText;
  final Icon customeicon;
  final bool ispass;

  TextEditingController controller;

  @override
  State<custome_textFormField> createState() => _custome_textFormFieldState();
}

class _custome_textFormFieldState extends State<custome_textFormField> {
  bool obscure = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: TextFormField(
        obscureText: widget.ispass ? obscure : false,
        controller: widget.controller,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: Theme.of(context).textTheme.titleSmall,
          prefixIcon: widget.customeicon,
          suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  obscure = !obscure;
                });
              },
              icon: widget.ispass
                  ? const Icon(Icons.remove_red_eye_rounded)
                  : const SizedBox()),
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(16),
            ),
            borderSide: BorderSide(color: kSecondrycolor),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                Radius.circular(16),
              ),
              borderSide: BorderSide(color: kSecondrycolor)),
        ),
      ),
    );
  }
}
