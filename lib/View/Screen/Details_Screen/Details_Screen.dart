import 'package:ecommerceorange/Model/ProductModel.dart';
import 'package:ecommerceorange/View/Screen/Details_Screen/Components/Product_Imeges.dart';
import 'package:ecommerceorange/data/Static/static.dart';
import 'package:flutter/material.dart';
import 'Components/Custom_App_Bar.dart';
import 'Components/Product_Description.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key, required this.productId});
  final int productId;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int colorIndex = 0;

  @override
  Widget build(BuildContext context) {
    final Product product = getProductDetails(widget.productId);
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(AppBar().preferredSize.height),
          child: CustomAppBar(product: product)),
      backgroundColor: const Color(0xffF5F6F9),
      body: SafeArea(
        child: ListView(
          children: [
            ProductImages(product: product),
            const SizedBox(height: 20,),
            ProductDescription(product: product),
          ],
        ),
      ),
    );
  }
}

Product getProductDetails(int id) {
  for (Product p in productList) {
    if (p.id == id) {
      return p;
    }
  }
  return productList[id - 1];
}
