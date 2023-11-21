
import 'package:flutter/material.dart';
import '../Wedgit/Button.dart';
import '../Wedgit/TextFieldWidget.dart';
import 'OTP_Screen.dart';
import 'SIgnUp_Screen.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  TextEditingController emailTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Forget Password',
                style: TextStyle(

                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Please enter your email and we will send\n"
                "a link to return to your account",
                textAlign: TextAlign.center,
                maxLines: 2,
                textWidthBasis: TextWidthBasis.parent,
                style: TextStyle( color: Colors.grey),
              ),
              const SizedBox(
                height: 70,
              ),
              TextFieldWidget(
                obscureText: false,
                  emailTextEditingController: emailTextEditingController,
                  labelText: "Email",
                  hintText: "Enter your Email",
                  hintIcon: "assets/icons/icons/Mail.svg"),
              const SizedBox(
                height: 80,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CustomButton(
                    buttonText: "Continue",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const OTPScreen(),
                          ));
                    }),
              ),
              const SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account? ",
                    style: TextStyle( color: Colors.grey),
                  ),
                  InkWell(
                    child: const Text(
                      "Sign Up ",
                      style: TextStyle(
                           color: Colors.deepOrange),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpScreen(),
                          ));
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
