import './home_page.dart';
import './providers/language_provider.dart';
import './providers/theme_provider.dart';
import './route/custom_route.dart';
import './route/route_names.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<ThemeProvider>(
        create: (ctx) => ThemeProvider(),
      ),
      ChangeNotifierProvider<LanguageProvider>(
        create: (ctx) => LanguageProvider(),
      ),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var primaryColor =
        Provider.of<ThemeProvider>(context, listen: true).primaryColor;
    var accentColor =
        Provider.of<ThemeProvider>(context, listen: true).accentColor;
    var tm = Provider.of<ThemeProvider>(context, listen: true).tm;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: CustomRoute.allRoutes,
      initialRoute: homeRoute,
      home: HomePage(),
      themeMode: tm,
      darkTheme: ThemeData(
        buttonColor: Colors.white70,
        cardColor: Color.fromRGBO(14, 22, 33, 1),
        shadowColor: Colors.white,
        primarySwatch: primaryColor,
        accentColor: accentColor,
        canvasColor: Color.fromRGBO(14, 22, 33, 1),
        unselectedWidgetColor: Colors.white70,
        textTheme: ThemeData.dark().textTheme.copyWith(
              bodyText1: TextStyle(
                color: Colors.white70,
              ),
              headline6: TextStyle(
                color: Colors.white70,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Circular',
              ),
            ),
      ),
      theme: ThemeData(
        buttonColor: Colors.black87,
        cardColor: Colors.white,
        shadowColor: Colors.white,
        primarySwatch: primaryColor,
        accentColor: accentColor,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                color: Color.fromRGBO(20, 50, 50, 1),
              ),
              headline6: TextStyle(
                color: Colors.black87,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Circular',
              ),
            ),
      ),
    );
  }
}
