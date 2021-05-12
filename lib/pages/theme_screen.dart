import '../route/route_names.dart';
import '../widgets/main_drawer.dart';

import '../providers/language_provider.dart';
import '../providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class ThemeScreen extends StatelessWidget {
  static const routeName = '/theme';
  final bool fromOnBoarding;

  const ThemeScreen({this.fromOnBoarding = false});

  Widget buildRadioListTile(
      ThemeMode themeVal, String txt, IconData icon, BuildContext ctx) {
    return RadioListTile(
      secondary: Icon(
        icon,
        color: Theme.of(ctx).buttonColor,
      ),
      value: themeVal,
      groupValue: Provider.of<ThemeProvider>(ctx, listen: true).tm,
      onChanged: (newThemeVal) => Provider.of<ThemeProvider>(ctx, listen: false)
          .themeModeChange(newThemeVal),
      title: Text(txt),
    );
  }

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
                title: fromOnBoarding
                    ? null
                    : Text(lan.getTexts('theme_appBar_title')),
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
                        lan.getTexts('theme_screen_title'),
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        lan.getTexts('theme_mode_title'),
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                    buildRadioListTile(
                        ThemeMode.system,
                        lan.getTexts('System_default_theme'),
                        Icons.settings_system_daydream_outlined,
                        context),
                    buildRadioListTile(
                        ThemeMode.light,
                        lan.getTexts('light_theme'),
                        Icons.wb_sunny_outlined,
                        context),
                    buildRadioListTile(
                        ThemeMode.dark,
                        lan.getTexts('dark_theme'),
                        Icons.nights_stay_outlined,
                        context),
                    buildListTile(context, lan.getTexts('primary'), 'primary'),
                    buildListTile(context, lan.getTexts('accent'), 'accent'),
                    SizedBox(height: fromOnBoarding ? 80 : 0),
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

  ListTile buildListTile(BuildContext context, txt1, txt) {
    var primaryColor =
        Provider.of<ThemeProvider>(context, listen: true).primaryColor;
    var accentColor =
        Provider.of<ThemeProvider>(context, listen: true).accentColor;
    return ListTile(
      title: Text(
        '$txt1',
        style: Theme.of(context).textTheme.headline6,
      ),
      trailing: CircleAvatar(
        backgroundColor: txt == 'primary' ? primaryColor : accentColor,
      ),
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext ctx) {
            return AlertDialog(
              elevation: 4,
              titlePadding: EdgeInsets.all(0.0),
              contentPadding: EdgeInsets.all(0.0),
              content: SingleChildScrollView(
                child: ColorPicker(
                  pickerColor: txt == 'primary'
                      ? Provider.of<ThemeProvider>(ctx, listen: true)
                          .primaryColor
                      : Provider.of<ThemeProvider>(ctx, listen: true)
                          .accentColor,
                  onColorChanged: (newColor) =>
                      Provider.of<ThemeProvider>(context, listen: false)
                          .onChanged(newColor, txt == 'primary' ? 1 : 2),
                  colorPickerWidth: 300.0,
                  pickerAreaHeightPercent: 0.7,
                  enableAlpha: false,
                  displayThumbColor: true,
                  enableLabel: false,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
