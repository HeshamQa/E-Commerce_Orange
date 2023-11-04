import 'package:ecommerceorange/Wedgit/TextFieldWidget.dart';
import 'package:flutter/material.dart';
import '../Wedgit/Button.dart';

class SignUp2Screen extends StatefulWidget {
  const SignUp2Screen({super.key});

  @override
  State<SignUp2Screen> createState() => _SignUp2ScreenState();
}

class _SignUp2ScreenState extends State<SignUp2Screen> {
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
                height: 30,
              ),
              const Text(
                'Complete Profile',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 8,
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
                height: 38,
              ),
              TextFieldWidget(emailTextEditingController: emailTextEditingController, labelText: "First Name", hintText: "Enter your first name", assetName: "assets/icons/icons/User.svg"),
              TextFieldWidget(emailTextEditingController: passwordTextEditingController, labelText: "Last Name", hintText: "Enter your last name", assetName: "assets/icons/icons/User.svg"),
              TextFieldWidget(emailTextEditingController: confirmPasswordTextEditingController, labelText: "Phone Number", hintText: "Enter your phone number", assetName: "assets/icons/icons/Phone.svg"),
              TextFieldWidget(emailTextEditingController: confirmPasswordTextEditingController, labelText: "Address", hintText: "Enter your address", assetName: "assets/icons/icons/Location point.svg"),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: customButton(buttonText: "Continue", onTap: () {}),
              ),
              const SizedBox(
                height: 65,
              ),
              const Text(
                "By continuing you're confirm that you agree\nwith our Term and Condition",
                style: TextStyle(color: Colors.grey,),textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
