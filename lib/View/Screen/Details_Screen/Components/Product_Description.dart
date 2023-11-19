import 'package:ecommerceorange/Model/ProductsDetails.dart';
import 'package:ecommerceorange/View/Screen/Details_Screen/Components/Product_Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'TopRoundedContainer.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    super.key,
    required this.product,
  });

  final ProductDetails product;

  @override
  Widget build(BuildContext context) {
    return topRoundedContainer(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 30),
            child: Text(
              product.title,
              style: const TextStyle(

                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              padding: const EdgeInsets.all(15),
              width: 64,
              decoration: BoxDecoration(
                color: product.isFavourite
                    ? const Color(0xFFFFE6E6)
                    : const Color(0xFFF5F6F9),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: SvgPicture.asset(
                "assets/icons/icons/Heart Icon_2.svg",
                colorFilter: ColorFilter.mode(
                    product.isFavourite
                        ? const Color(0xFFFF4848)
                        : const Color(0xFFDBDEE4),
                    BlendMode.srcIn),
                height: 16,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 40),
            child: Text(
              product.description,
              style: const TextStyle(

                fontSize: 15,
                color: Colors.grey,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 10,bottom: 20),
            child: InkWell(
              onTap: () {},
              child: const Text(
                "See More Details >",
                style: TextStyle(
                  color: Colors.deepOrange,

                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          ProductColors(product: product)
        ],
      ),
    );
  }
}
