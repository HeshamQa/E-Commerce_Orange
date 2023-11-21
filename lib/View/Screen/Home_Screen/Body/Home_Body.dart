import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../data/Static/static.dart';
import '../../Details_Screen/Details_Screen.dart';

class HomeBody extends StatefulWidget {
  List<dynamic> fav;
  List<QueryDocumentSnapshot> data;
  HomeBody({super.key, required this.fav, required this.data});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  final int _counter = 0;
  @override
  void initState() {
    super.initState();
  }
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
                        TextStyle( color: Colors.grey)),
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

                            fontSize: 17)),
                    Spacer(),
                    Text("CashBack 20%",
                        style: TextStyle(
                            color: Colors.white,

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
                                   color: Colors.grey),
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

                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                  InkWell(
                    child: const Text(
                      "See More",
                      style: TextStyle( color: Colors.grey),
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

                                      color: Colors.white,
                                      fontSize: 20)),
                              Text(
                                "${specialModelList[index].brandCount}${specialModelList[index].subTitle}",
                                style: const TextStyle(
                                     color: Colors.white),
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

                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                  InkWell(
                    child: const Text(
                      "See More",
                      style: TextStyle( color: Colors.grey),
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
                itemCount: widget.data.length,
                padding: const EdgeInsets.all(10),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: InkWell(
                         onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailsScreen(
                                  index:index,data: widget.data),
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
                                child: //Hero(
                                  // tag: productList[index].id,
                                   Image.network(
                                    widget.data[index]['image'][0],
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            //),
                            SizedBox(
                              width: 145,
                              child: Text(
                                widget.data[index]['name'],
                                maxLines: 3,
                                style: const TextStyle(
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
                                    "\$${widget.data[index]['price']}",
                                    style: const TextStyle(
                                        fontSize: 20,
                                        color: Colors.deepOrange,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  IconButton(
                                    style: ButtonStyle(
                                      fixedSize: const MaterialStatePropertyAll(
                                          Size(20, 20)),
                                      backgroundColor: MaterialStatePropertyAll(

                                          widget.fav.contains(widget.data[index])?const Color(
                                              0x35ff2415):
                                          const Color(0x88ffffff),
                                      ),
                                      shape: const MaterialStatePropertyAll(
                                          CircleBorder()),
                                    ),
                                    highlightColor: Colors.transparent,
                                    onPressed: () {
                                      widget.fav.contains(widget.data[index])?widget.fav.remove(widget.data[index]):widget.fav.add(widget.data[index]);
                                      setState(() {});
                                    },
                                    icon: SvgPicture.asset(
                                        "assets/icons/icons/Heart Icon_2.svg",
                                        colorFilter: ColorFilter.mode(
                                          widget.fav.contains(widget.data[index])?const Color(
                                              0xfff80505):Colors.grey,
                                            BlendMode.srcIn)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
