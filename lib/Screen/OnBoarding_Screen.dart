import 'package:ecommerceorange/Screen/LoginScreen.dart';
import 'package:ecommerceorange/Wedgit/Button.dart';
import 'package:ecommerceorange/data/Static/static.dart';
import 'package:flutter/material.dart';

class onBoardingScreen extends StatefulWidget {
  const onBoardingScreen({super.key});

  @override
  State<onBoardingScreen> createState() => _onBoardingScreenState();
}

late int dotWidth;
int cIndex = 0;

class _onBoardingScreenState extends State<onBoardingScreen> {
  PageController? _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            flex: 2,
            child: PageView.builder(
              controller: _controller,
              onPageChanged: (value) {
                setState(() {
                  cIndex = value;
                });
              },
              itemCount: OnBoardingList.length,
              itemBuilder: (context, index) => Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    OnBoardingList[index].title!,
                    style: const TextStyle(
                      color: Color(0xfffc7444),
                      fontWeight: FontWeight.w700,
                      fontSize: 40,
                    ),
                  ),
                  Text(
                    OnBoardingList[index].body!,
                    style: const TextStyle(
                      color: Color(0xff949494),
                      fontWeight: FontWeight.normal,
                      fontSize: 17,
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Image.asset(
                    OnBoardingList[index].image!,
                    width: 300,
                    height: 350,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...List.generate(
                        OnBoardingList.length, (index) => dotBuilder(index))
                  ],
                ),
                const Spacer(
                  flex: 2,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 35,),
                  child: customButton(
                    buttonText: cIndex < OnBoardingList.length - 1
                        ? "Continue"
                        : "Next",
                    onTap: () {
                      if (cIndex == OnBoardingList.length - 1) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ));
                      }
                      _controller!.nextPage(
                          duration: const Duration(microseconds: 100),
                          curve: Curves.bounceIn);
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }

  AnimatedContainer dotBuilder(int index) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(right: 5),
      duration: const Duration(microseconds: 900),
      width: index == cIndex ? 25 : 10,
      height: 10,
      decoration: BoxDecoration(
          color: cIndex == index
              ? const Color(0xfffc7444)
              : const Color(0xc3757575),
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
