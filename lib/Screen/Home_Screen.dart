import 'package:ecommerceorange/data/Static/static.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      SearchBar(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.grey.shade200),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                        leading: const Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        constraints: const BoxConstraints(
                          maxWidth: 250,
                        ),
                        elevation: MaterialStateProperty.all(0),
                        hintText: "Search...",
                        hintStyle: const MaterialStatePropertyAll(
                            TextStyle(color: Colors.grey)),
                      ),
                      const Spacer(),
                      IconButton(
                          style: ButtonStyle(
                            fixedSize:
                                const MaterialStatePropertyAll(Size(50, 50)),
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.grey.shade200),
                            shape:
                                const MaterialStatePropertyAll(CircleBorder()),
                          ),
                          // padding: const EdgeInsets.all(15),
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onPressed: () {},
                          icon: SvgPicture.asset(
                              "assets/icons/icons/Cart Icon.svg")),
                      const Spacer(),
                      Stack(children: [
                        IconButton(
                            style: ButtonStyle(
                              fixedSize:
                                  const MaterialStatePropertyAll(Size(50, 50)),
                              backgroundColor: MaterialStatePropertyAll(
                                  Colors.grey.shade200),
                              shape: const MaterialStatePropertyAll(
                                  CircleBorder()),
                            ),
                            // padding: const EdgeInsets.all(15),
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onPressed: () {},
                            icon: SvgPicture.asset(
                                "assets/icons/icons/Bell.svg")),
                        Positioned(
                          right: 0,
                          child: Container(
                            padding: const EdgeInsets.all(1),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            constraints: const BoxConstraints(
                              minWidth: 16,
                              minHeight: 16,
                            ),
                            child: Text(
                              "$_counter",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )
                      ]),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: 140,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: PageView.builder(
                    itemCount: imageBannerList.length,
                    itemBuilder: (context, index) => ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        imageBannerList[index].image,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                  SizedBox(
                    height: 150,

                    child: ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) =>
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                          children: [
                            IconButton(
                                style: ButtonStyle(
                                  fixedSize: const MaterialStatePropertyAll(Size(65,65)),
                                  backgroundColor: MaterialStatePropertyAll(
                                      Colors.deepOrange.withOpacity(0.15)),
                                  shape:  MaterialStatePropertyAll(
                                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),),
                                ),
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onPressed: () {},
                                icon: SvgPicture.asset(
                                    "assets/icons/icons/Flash Icon.svg"),),
                            Padding(
                              padding: const EdgeInsets.only(top: 6.0),
                              child: const SizedBox(
                                width: 40,
                                  child: Text("Flash Deal",textAlign: TextAlign.center,style:  TextStyle(color: Colors.grey),)),
                            ),
                          ],
                      ),
                        ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
