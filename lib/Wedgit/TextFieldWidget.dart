import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.emailTextEditingController,
    required this.hintText,
    required this.labelText,
    required this.assetName,
  });

  final String hintText;
  final String labelText;
  final String assetName;
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
          hintStyle: const TextStyle(fontFamily: 'muli', color: Colors.grey),
          hintText: hintText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: SvgPicture.asset(assetName,
                  allowDrawingOutsideViewBox: false)),
          suffixIconConstraints: BoxConstraints.tight(const Size.square(45)),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 40, vertical: 22),
          labelText: labelText,
          labelStyle: const TextStyle(
            fontFamily: 'muli',
            color: Colors.grey,
          ),
          border: OutlineInputBorder(
              gapPadding: 10,
              borderSide: const BorderSide(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(27)),
        ),
      ),
    );
  }
}
