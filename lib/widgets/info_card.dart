import '../providers/language_provider.dart';
import '../route/route_names.dart';
import '../widgets/line_chart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final int effectedNum;
  final Color iconColor;
  final Function press;
  final Color cardColor;
  final Map historyData;

  const InfoCard(
      {Key key,
      this.title,
      this.effectedNum,
      this.iconColor,
      this.press,
      this.cardColor,
      this.historyData})
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
        child: LayoutBuilder(builder: (context, constraints) {
          return Container(
              margin: EdgeInsets.all(5),
              child: GestureDetector(
                onTap: press,
                child: Container(
                  width: (MediaQuery.of(context).size.width / 2) - 10,
                  decoration: BoxDecoration(
                      color: cardColor, borderRadius: BorderRadius.circular(8)),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(2),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    color: iconColor.withOpacity(0.12),
                                    shape: BoxShape.circle),
                                child: Image.asset(
                                  'assets/running.png',
                                  height: 12,
                                  width: 12,
                                  color: iconColor,
                                ),
                              ),
                              Text(
                                lan.getTexts(title),
                                style: TextStyle(fontWeight: FontWeight.bold),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5),
                                child: RichText(
                                  text: TextSpan(
                                      style:
                                          TextStyle(color: Color(0xFF1E2432)),
                                      children: [
                                        TextSpan(
                                            text: '$effectedNum\n',
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline5
                                                .copyWith(
                                                    fontWeight:
                                                        FontWeight.bold)),
                                        TextSpan(
                                            text: lan.getTexts('People'),
                                            style: TextStyle(
                                                fontSize: 12, height: 2))
                                      ]),
                                ),
                              ),
                              Expanded(
                                  child: LineChartReport(
                                historyData: historyData,
                                title: this.title,
                              ))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ));
        }),
      ),
    );
  }
}
