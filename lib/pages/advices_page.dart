import '../providers/language_provider.dart';
import '../route/route_names.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data_source.dart';

class Advices extends StatefulWidget {
  @override
  _AdvicesState createState() => _AdvicesState();
}

class _AdvicesState extends State<Advices> {
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
            appBar: AppBar(title: Text(lan.getTexts('advice'))),
            body: ListView.builder(
                itemCount: DataSource.advicesAr.length,
                itemBuilder: (context, index) {
                  return ExpansionTile(
                    title: Text(
                      !lan.isEn
                          ? DataSource.advicesAr[index]['advice']
                          : DataSource.advicesEn[index]['advice'],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          !lan.isEn
                              ? DataSource.advicesAr[index]['body']
                              : DataSource.advicesEn[index]['body'],
                        ),
                      )
                    ],
                  );
                })),
      ),
    );
  }
}
