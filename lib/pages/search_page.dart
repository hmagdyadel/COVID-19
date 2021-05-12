import '../providers/language_provider.dart';
import '../route/route_names.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class DataSearch extends SearchDelegate<String> {
  List<dynamic> list;
  List<dynamic> list2;
  var name = "";
  var flag = "";
  var cases = "";
  var deaths = "";
  var active = "";
  var recovered = "";

  DataSearch({this.list});

  Future getSearchData() async {
    var url = "https://corona.lmao.ninja/v2/countries?sort=cases";
    var response = await http.get(url);
    var body = json.decode(response.body);
    for (int i = 0; i < body.length; i++) {
      if (body[i]['country'] == query) {
        name = body[i]['country'];
        flag = body[i]['countryInfo']['flag'];
        cases = body[i]['cases'].toString();
        deaths = body[i]['deaths'].toString();
        active = body[i]['active'].toString();
        recovered = body[i]['recovered'].toString();
      }
      switch (query) {
        case "مصر":
          query = "Egypt";
          break;
        case 'سوريا':
          query = 'Syrian Arab Republic';
          break;
        case 'السعودية':
          query = 'Saudi Arabia';
          break;
        case 'العراق':
          query = 'Iraq';
          break;
        case 'الامارات':
          query = 'UAE';
          break;
        case 'الكويت':
          query = 'Kuwait';
          break;
        case 'الاردن':
          query = 'Jordan';
          break;
        case 'ليبيا':
          query = "Libyan Arab Jamahiriya";
          break;
        case 'قطر':
          query = 'Qatar';
          break;
        case 'جزر القمر':
          query = 'Comoros';
          break;
        case 'عمان':
          query = 'Oman';
          break;
        case 'موريتانيا':
          query = 'Mauritania';
          break;
        case 'السودان':
          query = 'Sudan';
          break;
        case 'اليمن':
          query = 'Yemen';
          break;
        case 'جيبوتي':
          query = 'Djibouti';
          break;
        case 'لبنان':
          query = 'Lebanon';
          break;
        case 'الجزائر':
          query = 'Algeria';
          break;
        case 'تونس':
          query = 'Tunisia';
          break;
        case 'البحرين':
          query = 'Bahrain';
          break;
        case 'الصومال':
          query = 'Somalia';
          break;
        case 'فلسطين':
          query = 'Palestine';
          break;
        case 'المغرب':
          query = 'Morocco';
          break;
      }
    }
  }

  String _changeName(String name) {
    switch (name) {
      case 'Morocco':
        name = 'المغرب';
        break;
      case 'Palestine':
        name = 'فلسطين';
        break;
      case 'Somalia':
        name = 'الصومال';
        break;
      case 'Bahrain':
        name = 'البحرين';
        break;
      case 'Tunisia':
        name = 'تونس';
        break;
      case 'Algeria':
        name = 'الجزائر';
        break;
      case 'Lebanon':
        name = 'لبنان';
        break;
      case 'Djibouti':
        name = 'جيبوتي';
        break;
      case 'Yemen':
        name = 'اليمن';
        break;
      case 'Sudan':
        name = 'السودان';
        break;
      case 'Mauritania':
        name = 'موريتانيا';
        break;
      case 'Oman':
        name = 'عمان';
        break;
      case 'Comoros':
        name = 'جزر القمر';
        break;
      case 'Qatar':
        name = 'قطر';
        break;
      case 'Libyan Arab Jamahiriya':
        name = "ليبيا";
        break;
      case 'Jordan':
        name = 'الاردن';
        break;
      case 'Kuwait':
        name = 'الكويت';
        break;
      case 'UAE':
        name = 'الامارات';
        break;
      case 'Iraq':
        name = 'العراق';
        break;
      case "Egypt":
        name = "مصر";
        break;
      case 'Syrian Arab Republic':
        name = 'سوريا';
        break;
      case 'Saudi Arabia':
        name = 'السعودية';
        break;
    }
    return name;
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    var lan = Provider.of<LanguageProvider>(context, listen: true);
    return WillPopScope(
      onWillPop: () {
        Navigator.pushReplacementNamed(context, homeRoute);
        return new Future(() => true);
      },
      child: Directionality(
        textDirection: lan.isEn ? TextDirection.ltr : TextDirection.rtl,
        child: FutureBuilder(
            future: getSearchData(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              return Container(
                height: 130,
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      color: Colors.grey[100],
                      offset: Offset(0, 10),
                      blurRadius: 10)
                ]),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 1),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(!lan.isEn ? _changeName(name) : name,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Image.network(
                            flag,
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
                                cases,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.red),
                          ),
                          Text(
                            lan.getTexts('ACTIVE').toString() +
                                "  :  " +
                                active,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                          Text(
                            lan.getTexts('RECOVERED').toString() +
                                "  :  " +
                                recovered,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.yellow[700]),
                          ),
                          Text(
                            lan.getTexts('DEATHS').toString() +
                                "  :  " +
                                deaths,
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
            }),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    var searchList = query.isEmpty
        ? list
        : list.where((element) => element.startsWith(query)).toList();
    return ListView.builder(
        itemCount: searchList.length,
        itemBuilder: (context, i) {
          return ListTile(
            leading: Icon(Icons.flag),
            title: Text(searchList[i]),
            onTap: () {
              query = searchList[i];
              if (query == "مصر") {
                query = "Egypt";
                showResults(context);
              }
              showResults(context);
            },
          );
        });
  }
}
