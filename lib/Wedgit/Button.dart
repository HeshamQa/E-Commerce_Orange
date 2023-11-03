import 'package:flutter/material.dart';

class customButton extends StatelessWidget {
  String buttonText;
  GestureTapCallback onTap;

  customButton({
    required this.buttonText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(
        horizontal: 15),
    height: 65,
    width: MediaQuery.sizeOf(context).width,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(25),
    color: const Color(0xfffc7444),
    ),
    child: MaterialButton(
      onPressed:onTap,
      child: Text(
        buttonText,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 20,
          )),
    ),
    );
  }
}
