import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:routesapp/model/area.dart';
import 'package:routesapp/pages/feed.dart';
import 'package:routesapp/pages/home.dart';
import 'package:routesapp/repository/menu_repository.dart';
import 'package:routesapp/util/constantes.dart';
import 'dart:developer';

class Router {



  static Route<dynamic> generateRoute(RouteSettings settings) {

    MenuRepository repository = new MenuRepository();

    log('Page [ $settings.name ]');

    List<Area> areas = repository.areas();

    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => MainPage());
      case feedRoute:
        var data = settings.arguments as String;
        return MaterialPageRoute(builder: (_) => Feed(data));
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(
                  child: Text('No route defined for ${settings.name}')),
            ));
    }
  }

}