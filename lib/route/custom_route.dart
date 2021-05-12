import 'package:covid_19/home_page.dart';
import 'package:covid_19/pages/about_page.dart';
import 'package:covid_19/pages/advices_page.dart';
import 'package:covid_19/pages/language_screen.dart';
import 'package:covid_19/pages/masks.dart';
import 'package:covid_19/pages/not_found_page.dart';
import 'package:covid_19/pages/theme_screen.dart';
import 'package:covid_19/route/route_names.dart';
import 'package:flutter/material.dart';

class CustomRoute {
  static Route<dynamic> allRoutes(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => HomePage());
      case aboutRoute:
        return MaterialPageRoute(builder: (_)=>AboutPage());
      case masks:
        return MaterialPageRoute(builder: (_)=>Masks());
      case advices:
        return MaterialPageRoute(builder: (_)=>Advices());
      case themes:
        return MaterialPageRoute(builder: (_)=>ThemeScreen());
      case languages:
        return MaterialPageRoute(builder: (_)=>LanguageScreen());

    }
    return MaterialPageRoute(builder: (_)=>NotFoundPage());
  }
}
