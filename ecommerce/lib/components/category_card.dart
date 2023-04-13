// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:grock/grock.dart';

import '../constant/constant.dart';
import '../model/product.dart';
import '../view/product_detail.dart';

class CategoryCard extends StatelessWidget {
  Product product;
  CategoryCard({super.key, required this.product});
  @override
  Widget build(BuildContext context) {
    return GrockContainer(
      onTap: () => Grock.to(ProductDetail(product: product)),
      width: 50,
      height: 250,
      decoration: BoxDecoration(
          color: Constant.white,
          borderRadius: 15.allBR,
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 8,
            ),
          ]),
      child: IntrinsicHeight(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Center(
              child: Hero(
                tag: product.image,
                child: Image.asset(
                  product.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: 10.horizontalP,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        product.title,
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
