import 'package:ecommerceorange/Screen/Forget_Password.dart';
import 'package:ecommerceorange/Wedgit/Button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
      body: SingleChildScrollView(
        child: SafeArea(
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
                maxLines: 2,
                textWidthBasis: TextWidthBasis.parent,
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(
                height: 75,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  controller: emailTextEditingController,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    hintStyle: const TextStyle(color: Colors.grey),
                    hintText: "Enter your Email",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    suffixIcon: const Icon(Icons.email_outlined),
                    suffixIconColor: Colors.grey,
                    suffixIconConstraints:
                        BoxConstraints.tight(const Size.square(55)),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 20),
                    labelText: "Email",
                    labelStyle: const TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey,),
                        borderRadius: BorderRadius.circular(25)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  controller: passwordTextEditingController,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    hintStyle: const TextStyle(color: Colors.grey),
                    hintText: "Enter your Password",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    suffixIcon: const Icon(Icons.lock_outline),
                    suffixIconColor: Colors.grey,
                    suffixIconConstraints:
                        BoxConstraints.tight(const Size.square(55)),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 20),
                    labelText: "Password",
                    labelStyle: const TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
                child: Row(
                  children: [
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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: customButton(buttonText: "Continue", onTap: () {}),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Colors.grey.shade200),
                          shape: const MaterialStatePropertyAll(CircleBorder())
                          ),
                      padding: const EdgeInsets.all(15),
                      iconSize: 30,
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
                          backgroundColor: MaterialStatePropertyAll(Colors.grey.shade200),
                          shape: const MaterialStatePropertyAll(CircleBorder())
                      ),
                      padding: const EdgeInsets.all(16),
                      iconSize: 30,
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
                          backgroundColor: MaterialStatePropertyAll(Colors.grey.shade200),
                          shape: const MaterialStatePropertyAll(CircleBorder())
                      ),
                      padding: const EdgeInsets.all(15),
                      iconSize: 30,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      color: Colors.grey,
                      onPressed: () {},
                      icon:  SvgPicture.asset("assets/icons/icons/twitter.svg"),
                  ),
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
                    style: TextStyle(color: Colors.grey),
                  ),
                  InkWell(
                    child: const Text(
                      "Sign Up ",
                      style: TextStyle(color: Colors.deepOrange),
                    ),
                    onTap: () {},
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
