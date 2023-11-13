import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../Wedgit/ProfileMenu.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            SizedBox(
              height: 115,
              width: 115,
              child: Stack(
                fit: StackFit.expand,
                clipBehavior: Clip.none,
                children: [
                  const CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images/Profile Image.png"),
                  ),
                  Positioned(
                    bottom: 0,
                    right: -5,
                    child: SizedBox(
                      width: 45,
                      height: 45,
                      child: IconButton(
                          style: ButtonStyle(
                              backgroundColor: const MaterialStatePropertyAll(
                                  Colors.white),
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                      side: const BorderSide(
                                          color: Colors.white, width: 3)
                                      // side: const BorderSide(color: Colors.white),
                                      ))),
                          onPressed: () {},
                          icon: SvgPicture.asset(
                              "assets/icons/icons/Camera Icon.svg")),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ProfileButton(
              text: "My Account",
              icon: "assets/icons/icons/User Icon.svg",
              press: () => {},
            ),
            ProfileButton(
              text: "Notifications",
              icon: "assets/icons/icons/Bell.svg",
              press: () {},
            ),
            ProfileButton(
              text: "Settings",
              icon: "assets/icons/icons/Settings.svg",
              press: () {},
            ),
            ProfileButton(
              text: "Help Center",
              icon: "assets/icons/icons/Question mark.svg",
              press: () {},
            ),
            ProfileButton(
              text: "Log Out",
              icon: "assets/icons/icons/Log out.svg",
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
