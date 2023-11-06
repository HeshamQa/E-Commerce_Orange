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
  List<int> brandCounter = [10, 5];
  ColorFilter image = ColorFilter.mode(Colors.grey.shade300, BlendMode.srcIn);
  ColorFilter image2 = const ColorFilter.mode(Colors.red, BlendMode.srcIn);
  Color color1 = Colors.grey.shade100;
  Color color2 = Colors.red.shade100;

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

                  ///Header {search bar , Cart , Notifications}
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
                            TextStyle(fontFamily: 'muli', color: Colors.grey)),
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
                                fontFamily: 'muli',
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
                const SizedBox(height: 50),

                ///Image Banner
                Container(
                  width: MediaQuery.of(context).size.width,
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
                const SizedBox(height: 50),

                ///Categories
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                    padding: const EdgeInsets.only(left: 10),
                    itemCount: categoriesModelList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          IconButton(
                            style: ButtonStyle(
                              fixedSize:
                                  const MaterialStatePropertyAll(Size(60, 60)),
                              backgroundColor: MaterialStatePropertyAll(
                                  Colors.deepOrange.withOpacity(0.15)),
                              shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ),
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onPressed: () {},
                            icon: SvgPicture.asset(
                                categoriesModelList[index].icon),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 6.0),
                            child: SizedBox(
                                width: 40,
                                child: Text(
                                  categoriesModelList[index].name,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      fontFamily: 'muli', color: Colors.grey),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                ///Special for you {title , See More Button}
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Special For You",
                          style: TextStyle(
                              fontFamily: 'muli',
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                      InkWell(
                        child: const Text(
                          "See More",
                          style:
                              TextStyle(fontFamily: 'muli', color: Colors.grey),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                ///Special For You {Components}
                SizedBox(
                  height: 140,
                  child: ListView.builder(
                    itemCount: specialModelList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset(
                              specialModelList[index].image,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            width: 340,
                            height: 140,
                            padding: const EdgeInsets.symmetric(
                                vertical: 12, horizontal: 20),
                            alignment: Alignment.topLeft,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.black.withOpacity(0.35),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(specialModelList[index].title,
                                    style: const TextStyle(
                                        fontFamily: 'muli',
                                        color: Colors.white,
                                        fontSize: 20)),
                                Text(
                                  "${specialModelList[index].brandCount}${specialModelList[index].subTitle}",
                                  style: const TextStyle(
                                      fontFamily: 'muli', color: Colors.white),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),

                ///Popular products {title , see more}
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Popular Product",
                          style: TextStyle(
                              fontFamily: 'muli',
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                      InkWell(
                        child: const Text(
                          "See More",
                          style:
                              TextStyle(fontFamily: 'muli', color: Colors.grey),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                ///Popular products Component
                SizedBox(
                  height: 295,
                  child: ListView.builder(
                    itemCount: popularModelList.length,
                    padding: const EdgeInsets.all(10),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(20)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                popularModelList[index].image,
                                width: 125,
                                height: 125,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 145,
                            child: Text(
                              popularModelList[index].title,
                              style: const TextStyle(
                                  fontFamily: 'muli',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          SizedBox(
                            width: 162,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "\$${popularModelList[index].price}",
                                  style: const TextStyle(
                                      fontFamily: 'muli',
                                      fontSize: 18,
                                      color: Colors.deepOrange,
                                      fontWeight: FontWeight.bold),
                                ),
                                IconButton(
                                  style: ButtonStyle(
                                    fixedSize: const MaterialStatePropertyAll(
                                        Size(20, 20)),
                                    backgroundColor:
                                        MaterialStatePropertyAll(color1),
                                    shape: const MaterialStatePropertyAll(
                                        CircleBorder()),
                                  ),
                                  highlightColor: Colors.transparent,
                                  onPressed: () {
                                    setState(() {
                                      ColorFilter temp = image;
                                      image = image2;
                                      image2 = temp;

                                      ///
                                      Color c = color1;
                                      color1 = color2;
                                      color2 = c;
                                    });
                                  },
                                  icon: SvgPicture.asset(
                                      "assets/icons/icons/Heart Icon_2.svg",
                                      colorFilter: image),
                                ),
                              ],
                            ),
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

      ///Bottom Navigation Bar
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(top: 10),
        height: 85,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.25),
              offset: const Offset(0, -10),
              blurRadius: 100)
        ], borderRadius: BorderRadius.circular(100)),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(40), topLeft: Radius.circular(40)),
          child: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  icon: SvgPicture.asset("assets/icons/icons/Shop Icon.svg"),
                  label: "1"),
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
            currentIndex: 1,
            showSelectedLabels: false,
            showUnselectedLabels: false,
          ),
        ),
      ),
    );
  }
}
