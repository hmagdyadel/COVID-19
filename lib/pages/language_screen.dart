import '../route/route_names.dart';
import '../widgets/main_drawer.dart';
import 'package:flutter/cupertino.dart';

import '../providers/language_provider.dart';
import '../providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LanguageScreen extends StatelessWidget {
  static const routeName = '/language';
  final bool fromOnBoarding;

  const LanguageScreen({this.fromOnBoarding = false});

  @override
  Widget build(BuildContext context) {
    var lan = Provider.of<LanguageProvider>(context, listen: true);
    return WillPopScope(
      onWillPop: () {
        Navigator.pushReplacementNamed(context, homeRoute);
        return new Future(() => true);
      },
      child: Directionality(
        textDirection: lan.isEn ? TextDirection.ltr : TextDirection.rtl,
        child: Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                pinned: false,
                title: fromOnBoarding ? null : Text(lan.getTexts('language')),
                backgroundColor: fromOnBoarding
                    ? Theme.of(context).canvasColor
                    : Theme.of(context).primaryColor,
                elevation: fromOnBoarding ? 0 : 5,
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        lan.getTexts('drawer_switch_title'),
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('🇪🇬'),
                        Text(
                          lan.getTexts('drawer_switch_item2'),
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        CupertinoSwitch(
                          value: Provider.of<LanguageProvider>(context,
                                  listen: true)
                              .isEn,
                          onChanged: (newValue) {
                            Provider.of<LanguageProvider>(context,
                                    listen: false)
                                .changeLan(newValue);
                            Navigator.of(context)
                                .pushReplacementNamed(homeRoute);
                          },
                          trackColor:
                              Provider.of<ThemeProvider>(context, listen: true)
                                          .tm ==
                                      ThemeMode.dark
                                  ? Colors.grey
                                  : Provider.of<ThemeProvider>(context,
                                          listen: true)
                                      .accentColor,
                        ),
                        Text(
                          lan.getTexts('drawer_switch_item1'),
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        Text('🇺🇸'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          drawer: fromOnBoarding ? null : MainDrawer(),
        ),
      ),
    );
  }
}
