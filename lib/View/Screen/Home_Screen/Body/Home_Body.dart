import 'package:ecommerceorange/View/Screen/Details_Screen/Details_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../data/Static/static.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  final int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            ///Header {search bar , Cart , Notifications}
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
                        TextStyle(fontFamily: 'muli', color: Colors.grey)),
                  ),
                  const Spacer(),
                  IconButton(
                      style: ButtonStyle(
                        fixedSize: const MaterialStatePropertyAll(Size(50, 50)),
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.grey.shade200),
                        shape: const MaterialStatePropertyAll(CircleBorder()),
                      ),
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onPressed: () {},
                      icon:
                          SvgPicture.asset("assets/icons/icons/Cart Icon.svg")),
                  const Spacer(),
                  Stack(children: [
                    IconButton(
                        style: ButtonStyle(
                          fixedSize:
                              const MaterialStatePropertyAll(Size(50, 50)),
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.grey.shade200),
                          shape: const MaterialStatePropertyAll(CircleBorder()),
                        ),
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onPressed: () {},
                        icon: SvgPicture.asset("assets/icons/icons/Bell.svg")),
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
            const SizedBox(height: 30),

            ///Image Banner Text Only!!
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(20)),
              child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("A summer surprise",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'muli',
                            fontSize: 17)),
                    Spacer(),
                    Text("CashBack 20%",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'muli',
                            fontSize: 28,
                            fontWeight: FontWeight.w700)),
                  ]),
            ),
            const SizedBox(height: 30),

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
                              Colors.orange.withOpacity(0.2)),
                          shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onPressed: () {},
                        icon: SvgPicture.asset(categoriesModelList[index].icon),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0),
                        child: SizedBox(
                            width: 50,
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
                      style: TextStyle(fontFamily: 'muli', color: Colors.grey),
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
                itemBuilder: (context, index) => InkWell(
                  onTap: () {},
                  child: Container(
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
                      style: TextStyle(fontFamily: 'muli', color: Colors.grey),
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
                itemCount: productList.length,
                padding: const EdgeInsets.all(10),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  if (productList[index].isPopular){
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailsScreen(
                                  productId: productList[index].id),
                            )),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(30),
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(20)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Hero(
                                  tag: productList[index].id,
                                  child: Image.asset(
                                    productList[index].images[0],
                                    width: 100,
                                    height: 90,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 145,
                              child: Text(
                                productList[index].title,
                                style: const TextStyle(
                                    fontFamily: 'muli',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            SizedBox(
                              width: 162,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "\$${productList[index].price}",
                                    style: const TextStyle(
                                        fontFamily: 'muli',
                                        fontSize: 20,
                                        color: Colors.deepOrange,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  IconButton(
                                    style: ButtonStyle(
                                      fixedSize: const MaterialStatePropertyAll(
                                          Size(20, 20)),
                                      backgroundColor: MaterialStatePropertyAll(
                                        productList[index].isFavourite
                                            ? const Color(0xFFFFE6E6)
                                            : const Color(0xFFF5F6F9),
                                      ),
                                      shape: const MaterialStatePropertyAll(
                                          CircleBorder()),
                                    ),
                                    highlightColor: Colors.transparent,
                                    onPressed: () {
                                      setState(() {
                                        productList[index].isFavourite=!(productList[index].isFavourite);
                                      });
                                    },
                                    icon: SvgPicture.asset(
                                        "assets/icons/icons/Heart Icon_2.svg",
                                        colorFilter: ColorFilter.mode(
                                            productList[index].isFavourite
                                                ? Colors.red
                                                : Colors.grey,
                                            BlendMode.srcIn)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }
                  return null;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
