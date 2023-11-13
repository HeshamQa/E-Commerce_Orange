import 'package:ecommerceorange/Model/ProductModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'TopRoundedContainer.dart';
import 'add_To_Cart_Button.dart';

class ProductColors extends StatefulWidget {
  const ProductColors({super.key, required this.product});

  final Product product;

  @override
  State<ProductColors> createState() => _ProductColorsState();
}

class _ProductColorsState extends State<ProductColors> {
  @override
  Widget build(BuildContext context) {
    int colorIndex = 0;
    return topRoundedContainer(
      color: const Color(0xffF5F6F9),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            child: Row(
              children: [
                ...List.generate(
                  widget.product.colors.length,
                  (index) => InkWell(
                    onTap: () {
                      setState(() {
                        colorIndex = index;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 2),
                      padding: const EdgeInsets.all(8),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: index == colorIndex
                                ? Colors.deepOrange
                                : Colors.transparent),
                        shape: BoxShape.circle,
                      ),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: widget.product.colors[index],
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(color: Colors.white,shape: BoxShape.circle),
                    child: IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/icons/remove.svg",colorFilter: const ColorFilter.mode(Colors.deepOrange,BlendMode.srcIn),))),
                const SizedBox(width: 20,),
                Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(color: Colors.white,shape: BoxShape.circle,),
                    child: IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/icons/Plus Icon.svg",colorFilter: const ColorFilter.mode(Colors.deepOrange,BlendMode.srcIn),))),

              ],
            ),
          ),
          const AddToCartButton(),
        ],
      ),
    );
  }
}