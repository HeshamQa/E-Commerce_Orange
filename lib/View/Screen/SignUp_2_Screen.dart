import 'package:ecommerceorange/General.dart';
import 'package:flutter/material.dart';
import '../Wedgit/Button.dart';
import '../Wedgit/TextFieldWidget.dart';
import 'Home_Screen/Home_Screen.dart';

class SignUp2Screen extends StatefulWidget {
  const SignUp2Screen({super.key});

  @override
  State<SignUp2Screen> createState() => _SignUp2ScreenState();
}

class _SignUp2ScreenState extends State<SignUp2Screen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController firstNameTextEditingController = TextEditingController();
    TextEditingController lastNameTextEditingController =
        TextEditingController();
    TextEditingController phoneTextEditingController =
        TextEditingController();
    TextEditingController addressTextEditingController =
    TextEditingController();
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
                style: TextStyle( color: Colors.grey),
              ),
              const SizedBox(
                height: 38,
              ),
              TextFieldWidget(
                  emailTextEditingController: firstNameTextEditingController,
                  labelText: "First Name",
                  hintText: "Enter your first name",
                  hintIcon: "assets/icons/icons/User.svg"),
              TextFieldWidget(
                  emailTextEditingController: lastNameTextEditingController,
                  labelText: "Last Name",
                  hintText: "Enter your last name",
                  hintIcon: "assets/icons/icons/User.svg"),
              TextFieldWidget(
                  emailTextEditingController:
                      phoneTextEditingController,
                  labelText: "Phone Number",
                  hintText: "Enter your phone number",
                  hintIcon: "assets/icons/icons/Phone.svg"),
              TextFieldWidget(
                  emailTextEditingController:
                      addressTextEditingController,
                  labelText: "Address",
                  hintText: "Enter your address",
                  hintIcon: "assets/icons/icons/Location point.svg"),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CustomButton(buttonText: "Continue", onTap: () {
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const HomeScreen(),), (route) => false);
                  General.savePrefString("Name", "$firstNameTextEditingController $lastNameTextEditingController");
                  General.savePrefString("Name", "$phoneTextEditingController");
                  General.savePrefString("Name", "$addressTextEditingController");
                }),
              ),
              const SizedBox(
                height: 65,
              ),
              const Text(
                "By continuing you're confirm that you agree\nwith our Term and Condition",
                style: TextStyle(

                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
