import '../providers/language_provider.dart';
import '../route/route_names.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data_source.dart';

class Masks extends StatefulWidget {
  @override
  _MasksState createState() => _MasksState();
}

class _MasksState extends State<Masks> {
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
            appBar: AppBar(title: Text(lan.getTexts('mask'))),
            body: ListView.builder(
              itemCount: DataSource.masksEn.length,
              itemBuilder: (context, index) {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      ExpansionTile(
                        title: Text(
                          !lan.isEn
                              ? DataSource.masksAr[index]['title']
                              : DataSource.masksEn[index]['title'],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              !lan.isEn
                                  ? DataSource.masksAr[index]['body']
                                  : DataSource.masksEn[index]['body'],
                            ),
                          )
                        ],
                      ),
                      !lan.isEn
                          ? Column(
                              children: [
                                Container(
                                    height: MediaQuery.of(context).size.height,
                                    width:
                                        MediaQuery.of(context).size.width - 15,
                                    // padding: EdgeInsets.all(4),
                                    child: Image.asset(
                                        'assets/icons/medical_ar.jpg')),
                                Container(
                                    height: MediaQuery.of(context).size.height,
                                    width:
                                        MediaQuery.of(context).size.width - 15,
                                    //  padding: EdgeInsets.all(4),
                                    child: Image.asset(
                                        'assets/icons/non_medical_ar.jpg')),
                              ],
                            )
                          : Column(
                              children: [
                                Container(
                                    height: MediaQuery.of(context).size.height,
                                    width:
                                        MediaQuery.of(context).size.width - 15,
                                    // padding: EdgeInsets.all(4),
                                    child: Image.asset(
                                        'assets/icons/medical_en.png')),
                                Container(
                                    height: MediaQuery.of(context).size.height,
                                    width:
                                        MediaQuery.of(context).size.width - 15,
                                    //  padding: EdgeInsets.all(4),
                                    child: Image.asset(
                                        'assets/icons/medical_en.png')),
                              ],
                            )
                    ],
                  ),
                );
              },
            )),
      ),
    );
  }
}
