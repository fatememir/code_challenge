import 'package:code_challenge/features/detect_platform/presentation/view/home_page.dart';
import 'package:flutter/material.dart';
import 'const.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    return Routes.fadeThrough(settings, (context) {
      switch (settings.name) {
        case RouteName.init:
          return  const HomePage();
        default:
          return _errorRoute(settings.name);
      }
    });
  }

  static Widget _errorRoute(routeName) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error'),
      ),
      body: Center(
        child: Text('ERROR : $routeName route not found'),
      ),
    );
  }
}

class Routes {
  static Route<T> fadeThrough<T>(RouteSettings settings, WidgetBuilder page,
      {int duration = 400}) {
    return PageRouteBuilder<T>(
      settings: settings,
      transitionDuration: Duration(milliseconds: duration),
      pageBuilder: (context, animation, secondaryAnimation) => page(context),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return SlideTransition(
            position: Tween<Offset>(
                    begin: const Offset(1, 0), end: const Offset(0, 0))
                .animate(animation),
            child: child);
      },
    );
  }
}
