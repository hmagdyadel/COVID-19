import '../providers/language_provider.dart';
import '../route/route_names.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../data_source.dart';

class FAQPage extends StatelessWidget {
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
            title: Text(lan.getTexts('FAQS')),
          ),
          body: ListView.builder(
              itemCount: DataSource.questionAnswers.length,
              itemBuilder: (context, index) {
                return ExpansionTile(
                  title: Text(
                    !lan.isEn
                        ? DataSource.questionAnswersAR[index]['question']
                        : DataSource.questionAnswers[index]['question'],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        !lan.isEn
                            ? DataSource.questionAnswersAR[index]['answer']
                            : DataSource.questionAnswers[index]['answer'],
                      ),
                    )
                  ],
                );
              }),
        ),
      ),
    );
  }
}
