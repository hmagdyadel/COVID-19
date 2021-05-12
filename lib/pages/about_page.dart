import '../providers/language_provider.dart';
import '../route/route_names.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
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
          backgroundColor: Colors.blue[900],
          appBar: AppBar(
            title: Text(lan.getTexts('about')),
          ),
          body: Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.all(15),
            width: MediaQuery.of(context).size.width - 20,
            height: MediaQuery.of(context).size.height - 20,
            decoration: BoxDecoration(
              color: Colors.blue[700],
              border: Border.all(width: 2.0),
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Text(
                  lan.getTexts('app_title'),
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Text(lan.getTexts('version'),
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                SizedBox(height: 20),
                Text(lan.getTexts('month'), style: TextStyle(fontSize: 18)),
                SizedBox(height: 40),
                Text(lan.getTexts('developed'),
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Text(lan.getTexts('software_Engineer'),
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Text(lan.getTexts('software_Engineer_name'),
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(blurRadius: 10, offset: Offset(0.9, 0.9))
                        ])),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
