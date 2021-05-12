import '../providers/language_provider.dart';
import '../route/route_names.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NotFoundPage extends StatefulWidget {
  @override
  _NotFoundPageState createState() => _NotFoundPageState();
}

class _NotFoundPageState extends State<NotFoundPage> {
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
            title: Text(lan.getTexts('not_found_page')),
          ),
        ),
      ),
    );
  }
}
