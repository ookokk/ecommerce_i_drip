import 'package:flutter/material.dart';

import '../assets.dart';
import '../model/bottom_nav_bar_model.dart';
import '../pages/account_page.dart';
import '../pages/cart_page.dart';
import '../pages/category_page.dart';
import '../pages/home_page.dart';
import '../pages/wishlist_page.dart';

class BaseScaffoldRiverpod extends ChangeNotifier {
  List<BottomNavBarModel> items = [
    BottomNavBarModel(image: Assets.icons.icBottomHomeSVG, title: "Home"),
    BottomNavBarModel(image: Assets.icons.icBottomSaveSVG, title: "Wishlist"),
    BottomNavBarModel(
        image: Assets.icons.icBottomCategoriesSVG, title: "Category"),
    BottomNavBarModel(image: Assets.icons.icBottomProfileSVG, title: "Account"),
    BottomNavBarModel(image: Assets.icons.icBottomCartSVG, title: "Cart"),
  ];
  int currentIndex = 0;

  void setCurrentIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  Widget body() {
    switch (currentIndex) {
      case 0:
        return const HomePage();
      case 1:
        return const WishlistPage();
      case 2:
        return const CategoryPage();
      case 3:
        return const AccountPage();
      case 4:
        return const CartPage();
      default:
        return const HomePage();
    }
  }
}
