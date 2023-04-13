import 'package:ecommerce/pages/wishlist_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grock/grock.dart';

import 'constant/constant.dart';
import 'view/splash.dart';

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce App',
      debugShowCheckedModeBanner: false,
      navigatorKey: Grock.navigationKey,
      theme: ThemeData(
        scaffoldBackgroundColor: Constant.white,
      ),
      home: Splash(),
      builder: (context, child) {
        return ScaffoldMessenger(
          key: Grock.scaffoldMessengerKey,
          child: child!,
        );
      },
    );
  }
}
