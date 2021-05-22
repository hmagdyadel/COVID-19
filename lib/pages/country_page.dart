import 'dart:convert';
import '../providers/language_provider.dart';
import '../route/route_names.dart';
import 'package:provider/provider.dart';
import '../pages/search_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CountryPage extends StatefulWidget {
  @override
  _CountryPageState createState() => _CountryPageState();
}

class _CountryPageState extends State<CountryPage> {
  List countriesData;
  var listSearch = [];

  Future getData() async {
    var url = "https://corona.lmao.ninja/v2/countries?sort=cases";
    var response = await http.get(Uri.parse(url));
    var body = json.decode(response.body);
    for (int i = 0; i < body.length; i++) {
      listSearch.add(body[i]['country']);
    }
    listSearch.add('مصر');
    listSearch.add('السعودية');
    listSearch.add('العراق');
    listSearch.add('سوريا');
    listSearch.add('الامارات');
    listSearch.add('الكويت');
    listSearch.add('الاردن');
    listSearch.add('ليبيا');
    listSearch.add('قطر');
    listSearch.add('جزر القمر');
    listSearch.add('عمان');
    listSearch.add('موريتانيا');
    listSearch.add('السودان');
    listSearch.add('اليمن');
    listSearch.add('جيبوتي'); //
    listSearch.add('لبنان');
    listSearch.add('الجزائر');
    listSearch.add('تونس');
    listSearch.add('البحرين');
    listSearch.add('الصومال');
    listSearch.add('فلسطين');
    listSearch.add('المغرب');
  }

  fetchWorldWideDate() async {
    http.Response response =
        await http.get(Uri.parse('https://corona.lmao.ninja/v2/countries?sort=cases'));
    setState(() {
      countriesData = json.decode(response.body);
    });
  }

  @override
  void initState() {
    super.initState();
    fetchWorldWideDate();
    getData();
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
          appBar: AppBar(
            title: Text(lan.getTexts('Countries_Status')),
            actions: [
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  showSearch(
                      context: context, delegate: DataSearch(list: listSearch));
                },
              ),
            ],
          ),
          body: countriesData == null
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemCount: countriesData == null ? 0 : countriesData.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 130,
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey[100],
                                offset: Offset(0, 10),
                                blurRadius: 10)
                          ]),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 1),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(countriesData[index]['country'],
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Image.network(
                                  countriesData[index]['countryInfo']['flag'],
                                  height: 50,
                                  width: 60,
                                )
                              ],
                            ),
                          ),
                          Expanded(
                              child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  lan.getTexts('CONFIRMED').toString() +
                                      "  :  " +
                                      countriesData[index]['cases'].toString(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red),
                                ),
                                Text(
                                  lan.getTexts('ACTIVE').toString() +
                                      "  :  " +
                                      countriesData[index]['active'].toString(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue),
                                ),
                                Text(
                                  lan.getTexts('RECOVERED').toString() +
                                      "  :  " +
                                      countriesData[index]['recovered']
                                          .toString(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.yellow[700]),
                                ),
                                Text(
                                  lan.getTexts('DEATHS').toString() +
                                      "  :  " +
                                      countriesData[index]['deaths'].toString(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[800]),
                                )
                              ],
                            ),
                          ))
                        ],
                      ),
                    );
                  },
                ),
        ),
      ),
    );
  }
}
