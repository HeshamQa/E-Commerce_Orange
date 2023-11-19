import 'package:ecommerceorange/Controller/ProductController.dart';
import 'package:ecommerceorange/Model/ProductsDetails.dart';
import 'package:ecommerceorange/data/Static/static.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class FavBody extends StatefulWidget {
  const FavBody({super.key});

  @override
  State<FavBody> createState() => _FavBodyState();
}

class _FavBodyState extends State<FavBody> {
  final List<ProductDetails> product=products();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF5F6F9),
      child: Padding(
        padding: const EdgeInsets.only(top: 22),
        child: Column(
          children: [
            const Text("Favourite",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
              fontFamily: 'muli'
            ),),
            const SizedBox(height: 20,),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.7,
              child: Consumer<ProductController>(
                builder: (context, value, child) {
                  return ListView.builder(
                  itemCount: product.length,
                    itemBuilder: (context, index) {
                        return Container(
                          padding: const EdgeInsets.all(10),
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.25),
                                    blurRadius: 10,
                                    spreadRadius: 2,
                                    offset: const Offset(1, 4))
                              ]),
                          width: MediaQuery.of(context).size.width,
                          height: 100,
                          child: Row(
                            children: [
                              Image.network(
                                value.productList[index].images,
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
                                    width: MediaQuery.of(context).size.width * 0.5,
                                    child: Text(
                                      value.productList[index].title,
                                      style: const TextStyle(

                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "\$${value.productList[index].price}",
                                    style: const TextStyle(

                                        fontSize: 17,
                                        color: Colors.deepOrange,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              IconButton(
                                  onPressed: () {
                                    setState(() {});
                                  },
                                  icon: SvgPicture.asset(
                                      "assets/icons/icons/Trash.svg")),
                            ],
                          ),
                        );
                    },
                 );
                }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
List<ProductDetails> products(){
  List<ProductDetails> p=[];
  for(ProductDetails s in productDetailsList){
    if(s.isFavourite){
      p.add(s);
    }
  }
  return p;
}
