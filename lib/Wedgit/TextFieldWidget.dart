import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.emailTextEditingController,
    required this.hintText,
    required this.labelText,
    required this.suffixIcon,
  });
  final String hintText;
  final String labelText;
  final IconData suffixIcon;
  final TextEditingController emailTextEditingController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextField(
        controller: emailTextEditingController,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            gapPadding: 10,
            borderRadius: BorderRadius.circular(27),
          ),
          hintStyle: const TextStyle(color: Colors.grey),
          hintText: hintText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon:  Icon(suffixIcon),
          suffixIconColor: Colors.grey,
          suffixIconConstraints:
          BoxConstraints.tight(const Size.square(65)),
          contentPadding: const EdgeInsets.symmetric(
              horizontal: 40, vertical: 22),
          labelText: labelText,
          labelStyle: const TextStyle(color: Colors.grey,),
          border: OutlineInputBorder(gapPadding: 10,
              borderSide: const BorderSide(color: Colors.grey,),
              borderRadius: BorderRadius.circular(27)),
        ),
      ),
    );
  }
}
