import 'dart:convert';
import './providers/theme_provider.dart';

import './data_source.dart';

import './pages/country_page.dart';
import './panels/infoPanel.dart';
import './panels/most_effected_country.dart';
import './panels/world_wide_panels.dart';
import './providers/language_provider.dart';
import './widgets/main_drawer.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map worldData;
  List countriesData;
  bool isDarkTheme = false;

  fetchWorldWideDate() async {
    http.Response response = await http.get(Uri.parse('https://corona.lmao.ninja/v2/all'));
    setState(() {
      worldData = json.decode(response.body);
    });
  }

  fetchCountriesData() async {
    http.Response response =
        await http.get(Uri.parse('https://corona.lmao.ninja/v2/countries?sort=cases'));
    setState(() {
      countriesData = json.decode(response.body);
    });
  }

  Map historyData;

  fetchHistoryData() async {
    http.Response response =
        await http.get(Uri.parse('https://corona.lmao.ninja/v2/historical/all'));
    setState(() {
      historyData = json.decode(response.body);
    });
  }

  getPref() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var mode = preferences.getString('isDarkMde');
    setState(() {
      if (mode == 'true') {
        isDarkTheme = false;
      } else if (isDarkTheme == null) {
        isDarkTheme = true;
      } else {
        isDarkTheme = true;
        print(isDarkTheme.toString());
      }
    });
  }

  @override
  void initState() {
    getPref();
    super.initState();
    fetchWorldWideDate();
    fetchCountriesData();
    fetchHistoryData();
    Provider.of<LanguageProvider>(context, listen: false).getLan();
    Provider.of<ThemeProvider>(context, listen: false).getThemeMode();
    Provider.of<ThemeProvider>(context, listen: false).getThemeColors();
  }

  @override
  Widget build(BuildContext context) {
    var lan = Provider.of<LanguageProvider>(context, listen: true);
    return WillPopScope(
      onWillPop: () {
        SystemNavigator.pop();
        return new Future(() => true);
      },
      child: Directionality(
        textDirection: lan.isEn ? TextDirection.ltr : TextDirection.rtl,
        child: Scaffold(
          drawer: MainDrawer(),
          appBar: AppBar(
            centerTitle: false,
            title: Text(lan.getTexts('COVID-19')),
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 100,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  color: Colors.orange[100],
                  child: Text(
                    !lan.isEn
                        ? DataSource.quoteAR
                        : DataSource.quote,
                    style: TextStyle(
                        color: Colors.orange[800],
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(lan.getTexts('WorldWide'),
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold)),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CountryPage()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: primaryBlack),
                            padding: EdgeInsets.all(10),
                            child: Text(
                              lan.getTexts('Regional'),
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                    )),
                worldData == null
                    ? Padding(
                        padding: const EdgeInsets.only(top: 50.0, bottom: 50.2),
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      )
                    : WorldWidePanel(
                        worldWide: worldData, historyData: historyData),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(lan.getTexts('Most_effected_country'),
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 10),
                countriesData == null
                    ? Container()
                    : MostAffectedPanel(countryData: countriesData),
                SizedBox(height: 5),
                InfoPanel(),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Center(
                    child: Text(lan.getTexts('We_are_together_in_this'),
                        style: TextStyle(
                            color: Colors.teal,
                            fontSize: 22,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                SizedBox(height: 40)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
