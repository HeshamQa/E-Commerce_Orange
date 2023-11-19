import 'package:flutter/material.dart';
import '../Wedgit/Button.dart';
import '../Wedgit/SocialButton.dart';
import '../Wedgit/TextFieldWidget.dart';
import 'Forget_Password.dart';
import 'Home_Screen/Home_Screen.dart';
import 'SIgnUp_Screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Welcome back',
              style: TextStyle(

                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Sign in with your Email & password\n"
              "or continue with social media",
              textAlign: TextAlign.center,
              style: TextStyle( color: Colors.grey),
            ),
            const SizedBox(
              height: 75,
            ),
            TextFieldWidget(
                emailTextEditingController: emailTextEditingController,
                labelText: "Email",
                hintText: "Enter your Email",
                hintIcon: "assets/icons/icons/Mail.svg"),
            TextFieldWidget(
                emailTextEditingController: passwordTextEditingController,
                labelText: "Password",
                hintText: "Enter your Password",
                hintIcon: "assets/icons/icons/Lock.svg"),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
              child: Row(
                children: [
                  //deepOrange color for checked
                  Checkbox(
                    value: check,
                    onChanged: (value) {
                      setState(() {
                        check = value!;
                      });
                    },
                    fillColor: const MaterialStatePropertyAll(Colors.grey),
                  ),
                  const Text(
                    "Remember me",
                    style: TextStyle(

                      color: Colors.grey,
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const ForgetPasswordScreen(),
                          ));
                    },
                    child: const Text(
                      "Forget Password?",
                      style: TextStyle(

                        color: Colors.grey,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ///enroll the padding inside custom button
            CustomButton(
                buttonText: "Continue",
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                      (route) => false);
                }),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialIconButton(icon:"assets/icons/icons/google-icon.svg"),
                const SizedBox(
                  width: 20,
                ),
                SocialIconButton(icon:"assets/icons/icons/facebook-2.svg"),
                const SizedBox(
                  width: 20,
                ),
                SocialIconButton(icon:"assets/icons/icons/twitter.svg"),
              ],
            ),
            const SizedBox(
              height: 25,
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
    );
  }
}