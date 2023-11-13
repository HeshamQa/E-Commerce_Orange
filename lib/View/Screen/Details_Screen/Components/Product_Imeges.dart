import 'package:flutter/material.dart';

import '../../../../Model/ProductModel.dart';

class ProductImages extends StatefulWidget {
  const ProductImages({super.key,required this.product});
  final Product product;
  @override
  State<ProductImages> createState() => Product_ImagesState();
}
class Product_ImagesState extends State<ProductImages> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 325,
      child: Column(
        children: [
          SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Hero(
                  tag: widget.product.id,
                  child: Image.asset(widget.product.images[selectedImage],height: 275,fit: BoxFit.fitHeight,))),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                widget.product.images.length,
                    (index) => InkWell(
                  onTap: () {
                    setState(() {
                      selectedImage = index;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.only(right: 15),
                    padding: const EdgeInsets.all(8),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: Colors.deepOrange.withOpacity(
                              selectedImage == index ? 1 : 0)),
                    ),
                    child: Image.asset(widget.product.images[index]),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
