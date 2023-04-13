import 'package:flutter/material.dart';

import '../assets.dart';
import '../model/home_products_model.dart';
import '../model/product.dart';

class WishlistRiverpod extends ChangeNotifier {
  PageController pageController = PageController(initialPage: 0);

  HomeProductsModel hotDeals =
      HomeProductsModel(categoryTitle: "My Wishlist", products: [
    Product(
        image: Assets.images.imC1PNG,
        title: "apple iMac 24 (2021)",
        price: 1299,
        star: 4.9,
        colors: [Colors.cyan, Colors.deepPurple, Colors.green],
        descTitle: "Get Apple TV+ free for a year",
        descDetail:
            "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
        isSaved: false),
    Product(
        image: Assets.images.imW1PNG,
        title: "Apple Watch V1",
        price: 859,
        star: 4.7,
        colors: [Colors.cyan, Colors.deepPurple, Colors.green],
        descTitle: "Get Apple TV+ free for a year",
        descDetail:
            "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
        isSaved: false),
    Product(
        image: Assets.images.imC2PNG,
        title: "Iphone 14 Pro Max",
        price: 2500,
        star: 4.7,
        colors: [Colors.cyan, Colors.deepPurple, Colors.green],
        descTitle: "Get Apple TV+ free for a year",
        descDetail:
            "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
        isSaved: false),
    Product(
        image: Assets.images.imP1PNG,
        title: "iPad Pro",
        price: 859,
        star: 4.7,
        colors: [Colors.cyan, Colors.deepPurple, Colors.green],
        descTitle: "Get Apple TV+ free for a year",
        descDetail:
            "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
        isSaved: false),
  ]);
}
