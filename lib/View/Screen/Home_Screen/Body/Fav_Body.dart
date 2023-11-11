import 'package:ecommerceorange/data/Static/static.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FavBody extends StatefulWidget {
  const FavBody({super.key});

  @override
  State<FavBody> createState() => _FavBodyState();
}

class _FavBodyState extends State<FavBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: ListView.builder(
        itemCount: favoriteModelList.length,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.center,
            margin: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color(0xFFF5F6F9),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 10,
                    spreadRadius: 2,
                    offset: const Offset(1, 4)
                  )
                ]),
            width: MediaQuery.of(context).size.width,
            height: 100,
            child: Row(
              children: [
                Image.asset(
                  favoriteModelList.elementAt(index).image,
                  width: 75,
                  height: 75,
                ),
                const SizedBox(
                  width: 30,
                ),
                 Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.5,
                      child: Text(
                        favoriteModelList.elementAt(index).name,
                        style: const TextStyle(
                            fontFamily: 'muli',
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Text(
                      "\$${favoriteModelList.elementAt(index).price}",
                      style: const TextStyle(
                          fontFamily: 'muli',
                          fontSize: 17,
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {
                      setState(() {
                        favoriteModelList.remove(favoriteModelList.elementAt(index));
                      });
                      },
                    icon: SvgPicture.asset("assets/icons/icons/Trash.svg")),
              ],
            ),
          );
        }
      ),
    );
  }
}
