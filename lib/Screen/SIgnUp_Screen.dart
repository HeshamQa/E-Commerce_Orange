import 'package:ecommerceorange/Wedgit/TextFieldWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../Wedgit/Button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailTextEditingController=TextEditingController();
    TextEditingController passwordTextEditingController=TextEditingController();
    TextEditingController confirmPasswordTextEditingController=TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 45,
              ),
              const Text(
                'Register Account',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Complete your details or continue\n"
                    "with social media",
                textAlign: TextAlign.center,
                maxLines: 2,
                textWidthBasis: TextWidthBasis.parent,
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(
                height: 50,
              ),
              TextFieldWidget(emailTextEditingController: emailTextEditingController, hintText: "Email", labelText: "Enter your Email", suffixIcon: Icons.email_outlined),
              TextFieldWidget(emailTextEditingController: passwordTextEditingController, hintText: "Password", labelText: "Enter your Password", suffixIcon: Icons.lock_outline),
              TextFieldWidget(emailTextEditingController: confirmPasswordTextEditingController, hintText: "Confirm Password", labelText: "Re-Enter your Password", suffixIcon: Icons.lock_outline),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: customButton(buttonText: "Continue", onTap: () {}),
              ),
              const SizedBox(
                height: 85,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      style: ButtonStyle(
                          fixedSize: const MaterialStatePropertyAll(Size(50, 50)),
                          backgroundColor: MaterialStatePropertyAll(Colors.grey.shade300),
                          shape: const MaterialStatePropertyAll(CircleBorder())
                      ),
                      // padding: const EdgeInsets.all(15),
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      color: Colors.grey,
                      onPressed: () {},
                      icon:  SvgPicture.asset("assets/icons/icons/google-icon.svg")
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  IconButton(
                      style: ButtonStyle(
                        fixedSize: const MaterialStatePropertyAll(Size(50, 50)),
                        backgroundColor: MaterialStatePropertyAll(Colors.grey.shade300),
                        shape: const MaterialStatePropertyAll(CircleBorder()),
                      ),
                      // padding: const EdgeInsets.all(15),
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      color: Colors.grey,
                      onPressed: () {},
                      icon:  SvgPicture.asset("assets/icons/icons/facebook-2.svg")),
                  const SizedBox(
                    width: 20,
                  ),
                  IconButton(
                    style: ButtonStyle(
                        fixedSize: const MaterialStatePropertyAll(Size(50, 50)),
                        backgroundColor: MaterialStatePropertyAll(Colors.grey.shade300),
                        shape: const MaterialStatePropertyAll(CircleBorder())
                    ),
                    // padding: const EdgeInsets.all(15),
                    iconSize: 30,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    color: Colors.grey,
                    onPressed: () {},
                    icon:  SvgPicture.asset("assets/icons/icons/twitter.svg"),
                  ),
                ],
              ),
              const SizedBox(height: 25,),
              const Text(
                "By continuing you're confirm that you agree\nTerm and Policy",
                style: TextStyle(color: Colors.grey,),textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
