import 'package:chatapp/constant.dart';
import 'package:flutter/material.dart';

class custome_textFormField extends StatefulWidget {
  custome_textFormField({required this.hintText, required this.customeicon});
  final String hintText;
  Icon customeicon;

  @override
  State<custome_textFormField> createState() => _custome_textFormFieldState();
}

class _custome_textFormFieldState extends State<custome_textFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: Theme.of(context).textTheme.titleSmall,
        prefixIcon: widget.customeicon,
        suffixIcon: IconButton(
            onPressed: () {}, icon: const Icon(Icons.remove_red_eye_rounded)),
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
    );
  }
}
