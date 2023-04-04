import 'package:flutter/material.dart';
import 'package:practice_1/pages/cart_page.dart';
import 'package:practice_1/pages/home_detail_page.dart';
import 'package:practice_1/pages/home_page.dart';
import 'package:practice_1/pages/login_page.dart';
import 'package:practice_1/utils/routes.dart';
import 'package:practice_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import 'core/store.dart';

import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(VxState(store: MyStore(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: MyThemes.lightTheme,
      darkTheme: MyThemes.darkTheme,

      routeInformationParser: VxInformationParser(),
      routerDelegate: VxNavigator(routes: {
        "/": (_, __) => const MaterialPage(child: LoginPage()),
        MyRoutes.homeRoute: (_, __) => const MaterialPage(child: HomePage()),
        MyRoutes.homeDetailRoute: (uri, _) {
          final catalog = (VxState.store as MyStore)
              .catalog
              .getById(int.parse(uri.queryParameters['id']!));
          return MaterialPage(child: HomeDetailPage(catalog: catalog));
        },
        MyRoutes.loginRoute: (_, __) => const MaterialPage(child: LoginPage()),
        MyRoutes.cartRoute: (_, __) => const MaterialPage(child: CartPage()),
      }),
      // initialRoute: MyRoutes.homeRoute,
      // routes: {
      //   MyRoutes.loginRoute: (context) => const LoginPage(),
      //   MyRoutes.homeRoute: (context) => const HomePage(),
      //   MyRoutes.cartRoute: (context) => const CartPage(),
      // },
    );
  }
}
