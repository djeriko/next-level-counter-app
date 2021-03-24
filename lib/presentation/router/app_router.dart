import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:next_level_counter_app/core/constants/strings.dart';
import 'package:next_level_counter_app/core/exceptions/route_exception.dart';
import 'package:next_level_counter_app/presentation/screens/home_screen/home_screen.dart';

class AppRouter {
  static const String home = '/';

  const AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(
          builder: (_) => HomeScreen(
            title: Strings.homeScreenTitle,
          ),
        );
      default:
        throw const RouteException('Route not found!');
    }
  }
}
