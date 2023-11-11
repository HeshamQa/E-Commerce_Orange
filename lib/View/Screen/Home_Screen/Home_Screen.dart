import 'package:ecommerceorange/View/Screen/Home_Screen/Body/Fav_Body.dart';
import 'package:ecommerceorange/View/Screen/Home_Screen/Body/Profile_Body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'Body/Home_Body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int cIndex=0;
  Widget homeBody=const HomeBody();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: homeBody,
      ),

      ///Bottom Navigation Bar
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(top: 10),
        height: 85,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.25),
                  offset: const Offset(0, -10),
                  blurRadius: 100),
            ],
            borderRadius: BorderRadius.circular(100)),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(40), topLeft: Radius.circular(40)),
          child: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  icon: SvgPicture.asset("assets/icons/icons/Shop Icon.svg"),
                  label: "1" ),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset("assets/icons/icons/Heart Icon.svg"),
                  label: "2"),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                      "assets/icons/icons/Chat bubble Icon.svg"),
                  label: "3"),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset("assets/icons/icons/User Icon.svg"),
                  label: "4"),
            ],
            elevation: 0,
            backgroundColor: Colors.white,
            currentIndex: cIndex,
            onTap: (value) {
              setState(() {
                cIndex=value;
                if(cIndex==0) {
                  homeBody=const HomeBody();
                }else if(cIndex==1){
                  homeBody=const FavBody();
                } else if(cIndex==3) {
                  homeBody=const ProfileScreen();
                }
              });
            },
            showSelectedLabels: false,
            showUnselectedLabels: false,
          ),
        ),
      ),
    );
  }
}
