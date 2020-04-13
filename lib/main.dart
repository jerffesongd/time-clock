import 'package:flutter/material.dart';
import 'package:timeclock/src/home/colors_app.dart';
import 'package:timeclock/src/home/home.dart';

import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MaterialApp(
  theme: ThemeData(
    primarySwatch: const MaterialColor(
            ColorsApp.PRIMARY_VALUE, ColorsApp.PRIMARY_ARRAY)
  ),
  home: Home(),
  localizationsDelegates: [
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate
  ],
  supportedLocales: [const Locale('pt', 'BR')],
  debugShowCheckedModeBanner: false,
));

}


