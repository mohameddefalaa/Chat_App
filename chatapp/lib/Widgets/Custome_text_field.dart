import 'package:chatapp/constant.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class custome_textFormField extends StatefulWidget {
  custome_textFormField({
    this.hideicon = true,
    required this.ishidetext,
    required this.hintText,
    required this.customeicon,
    required this.controller,
  });
  bool hideicon;
  final String hintText;
  final Icon customeicon;
  bool ishidetext;
  TextEditingController controller;

  @override
  State<custome_textFormField> createState() => _custome_textFormFieldState();
}

class _custome_textFormFieldState extends State<custome_textFormField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: TextFormField(
        validator: (value) => value!.isEmpty ? " this filed is required" : null,
        obscureText: widget.ishidetext,
        controller: widget.controller,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: Theme.of(context).textTheme.titleSmall,
          prefixIcon: widget.customeicon,
          suffixIcon: widget.hideicon
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      widget.ishidetext = !widget.ishidetext;
                    });
                  },
                  icon: widget.ishidetext
                      ? Icon(Icons.visibility)
                      : Icon(Icons.visibility_off))
              : SizedBox(),
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(16),
            ),
            borderSide: BorderSide(color: kSecondrycolor),
          ),
          errorBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                Radius.circular(16),
              ),
              borderSide: BorderSide(color: kSecondrycolor)),
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
