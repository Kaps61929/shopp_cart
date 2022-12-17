import 'package:flutter/material.dart';
import 'package:shopp_cart/features/auth/screens/auth_screen.dart';

Route<dynamic> generateRoute(RouteSettings routesettings) {
  switch (routesettings.name) {
    case AuthScreen.routname:
      return MaterialPageRoute(
        settings: routesettings,
        builder: (context) => const AuthScreen(),
      );

    default:
      return MaterialPageRoute(
        settings: routesettings,
        builder: (context) => const Scaffold(
          body: Center(child: Text("Error Page doesnot exist")),
        ),
      );
  }
}
