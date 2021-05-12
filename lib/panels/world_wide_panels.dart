import 'package:covid_19/providers/language_provider.dart';
import 'package:covid_19/route/route_names.dart';
import 'package:provider/provider.dart';

import '../widgets/info_card.dart';
import 'package:flutter/material.dart';

class WorldWidePanel extends StatelessWidget {
  final Map worldWide;
  final Map historyData;

  const WorldWidePanel({Key key, this.worldWide, this.historyData})
      : super(key: key);

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
          padding: EdgeInsets.all(5),
          child: GridView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1, childAspectRatio: 2.3),
            children: [
              InfoCard(
                title: 'CONFIRMED',
                iconColor: Colors.blue,
                effectedNum: worldWide['cases'],
                press: () {},
                cardColor: Colors.blue[200],
                historyData: historyData,
              ),
              InfoCard(
                  title: 'ACTIVE',
                  iconColor: Colors.teal[800],
                  effectedNum: worldWide['active'],
                  press: () {},
                  cardColor: Colors.teal[200],
                  historyData: null),
              InfoCard(
                title: 'RECOVERED',
                iconColor: Colors.black,
                effectedNum: worldWide['recovered'],
                press: () {},
                cardColor: Colors.grey[400],
                historyData: historyData,
              ),
              InfoCard(
                title: 'DEATHS',
                iconColor: Colors.red,
                effectedNum: worldWide['deaths'],
                press: () {},
                cardColor: Colors.red[100],
                historyData: historyData,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class StatusPanel extends StatelessWidget {
  final Color panelColor;
  final Color textColor;
  final String title;
  final String count;

  const StatusPanel(
      {Key key, this.panelColor, this.textColor, this.title, this.count})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.all(10),
      height: 80,
      width: width / 2,
      color: panelColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title,
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 16, color: textColor)),
          Text(count,
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 16, color: textColor))
        ],
      ),
    );
  }
}
