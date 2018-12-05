import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:easymktf/home_widget.dart';
import 'package:easymktf/login_page.dart';

class Navigation {
  static Router router;

  static void initPaths() {
    router = Router()
      ..define('/', handler: Handler(
          handlerFunc: (BuildContext context, Map<String, dynamic> params) {
        return LoginPage();
      }))
      ..define('home_widget', handler: Handler(
          handlerFunc: (BuildContext context, Map<String, dynamic> params) {
        return Home();
      }));
  }

  static void navigateTo(
    BuildContext context,
    String path, {
    bool replace = false,
    TransitionType transition = TransitionType.native,
    Duration transitionDuration = const Duration(milliseconds: 250),
    RouteTransitionsBuilder transitionBuilder,
  }) {
    router.navigateTo(
      context,
      path,
      replace: replace,
      transition: transition,
      transitionDuration: transitionDuration,
      transitionBuilder: transitionBuilder,
    );
  }
}
