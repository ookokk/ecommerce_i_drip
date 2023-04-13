import 'package:flutter/material.dart';

import '../assets.dart';
import '../model/category.dart';
import '../model/home_products_model.dart';
import '../model/product.dart';

class CategoryRiverpod extends ChangeNotifier {
  List<String> campaigns = [
    Assets.images.imCampaignsPNG,
    Assets.images.imCampaignsPNG,
    Assets.images.imCampaignsPNG,
  ];

  int campaignsCurrentIndex = 0;

  PageController pageController = PageController(initialPage: 0);

  void setCampaignsIndex(int newPageValue) {
    campaignsCurrentIndex = newPageValue;
    notifyListeners();
  }

  Category category1 =
      Category(image: Assets.images.imC1PNG, title: "Category 1");
  Category category2 =
      Category(image: Assets.images.imP1PNG, title: "Category 2");
  Category category3 =
      Category(image: Assets.images.imC2PNG, title: "Category 3");
  Category category4 =
      Category(image: Assets.images.imP2PNG, title: "Category 4");
  Category category5 =
      Category(image: Assets.images.imW2PNG, title: "Category 5");
}
