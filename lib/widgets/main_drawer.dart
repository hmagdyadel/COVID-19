import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/language_provider.dart';
import '../route/route_names.dart';
import 'package:url_launcher/url_launcher.dart';

class MainDrawer extends StatelessWidget {
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
        child: Container(
          width: MediaQuery.of(context).size.width / 1.5,
          color: Theme.of(context).primaryColor,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                  accountEmail: InkWell(
                    child: Container(
                        child: Text('https://www.who.int/ar'),
                        color: Colors.black38),
                    onTap: () {
                      launch('https://www.who.int/ar');
                    },
                  ),
                  accountName: Container(
                      color: Colors.black38,
                      child: Text(lan.getTexts('COVID-19'))),
                  currentAccountPicture: CircleAvatar(
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('assets/icons/covid-19.jpg'),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/icons/moon.jpg'),
                          fit: BoxFit.cover))),
              buildListTile(
                lan.getTexts('theme_appBar_title'),
                Icons.color_lens,
                () {
                  Navigator.of(context).pushReplacementNamed(themes);
                },
              ),
              buildListTile(
                lan.getTexts('language'),
                Icons.language_outlined,
                () {
                  Navigator.of(context).pushReplacementNamed(languages);
                },
              ),
              Divider(
                height: 10,
                color: Colors.black54,
              ),
              buildListTile(
                lan.getTexts('about'),
                Icons.info,
                () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, aboutRoute);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  buildListTile(String title, IconData icon, Function tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 30,
        color: Colors.white,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 24,
        ),
      ),
      onTap: tapHandler,
    );
  }
}
