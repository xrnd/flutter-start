import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutterstart/view/StateWidgetView.dart';

final String homeRoute = '/home';

final String stateRoute = '/state';
final String asyncRoute = '/async';
final String layoutRoute = '/layout';
final String futureRoute = '/future';

class Routes {
  static void configureRoutes(Router router) {
    router.notFoundHandler = new Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      print("ROUTE WAS NOT FOUND !!!");
    });

    /// ROUTES FOR Widgets
    router.define(stateRoute, handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
          return new StateWidgetView();
        }));

  }
}
