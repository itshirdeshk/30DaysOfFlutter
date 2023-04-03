import 'package:flutter/material.dart';
import 'package:practice_1/pages/cart_page.dart';
import 'package:practice_1/pages/home_page.dart';
import 'package:practice_1/pages/login_page.dart';
import 'package:practice_1/utils/routes.dart';
import 'package:practice_1/widgets/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: MyThemes.lightTheme,
      darkTheme: MyThemes.darkTheme,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        MyRoutes.loginRoute: (context) => const LoginPage(),
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.cartRoute: (context) => const CartPage(),
      },
    );
  }
}
