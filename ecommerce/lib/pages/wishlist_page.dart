import 'package:ecommerce/riverpod/wishlist_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grock/grock.dart';
import 'package:ecommerce/model/home_products_model.dart';
import '../components/product_card.dart';
import '../constant/constant.dart';
import '../riverpod/home_riverpod.dart';

final wishlistRiverpod = ChangeNotifierProvider((ref) => WishlistRiverpod());

class WishlistPage extends ConsumerStatefulWidget {
  const WishlistPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeState();
}

class _HomeState extends ConsumerState<WishlistPage> {
  @override
  Widget build(BuildContext context) {
    var watch = ref.watch(wishlistRiverpod);
    var read = ref.read(wishlistRiverpod);
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: ListView(
            children: [
              homeProductCategories(read.hotDeals),
            ],
          ),
        ),
      ],
    ));
  }

  Widget homeProductCategories(HomeProductsModel model) {
    return Column(
      children: [
        Padding(
          padding: [20, 25, 20, 15].paddingLTRB,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                model.categoryTitle,
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
              ),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height,
          child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(
              width: 20,
            ),
            itemCount: model.products.length,
            padding: [20, 10, 20, 10].paddingLTRB,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return ProductCard(product: model.products[index]);
            },
          ),
        ),
      ],
    );
  }
}
