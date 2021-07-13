
import 'package:flutter/material.dart';

class AppRouter {
  GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();
  AppRouter._();
  static AppRouter appRouter = AppRouter._();

  void pushNewRoute(Widget widget) {
    navKey.currentState.push(MaterialPageRoute(builder: (context) => widget));
  }

  void pushNamedRoute(String routeName) {
    navKey.currentState.pushNamed(routeName);
  }
}
