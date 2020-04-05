import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';

import 'pages/buy.dart';
import 'pages/calculate.dart';
import 'pages/declaration.dart';
import 'pages/detail.dart';
import 'pages/faqs.dart';
import 'pages/get_back.dart';
import 'pages/home.dart';
import 'pages/landing.dart';
import 'pages/support.dart';
import 'pages/thanks.dart';

void main() => runApp(
      EasyLocalization(
        child: MyApp(),
        supportedLocales: [Locale('en', 'US'), Locale('hi', 'IN')],
        path: 'langs',
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toffee',
            debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        EasyLocalization.of(context).delegate,
      ],
      supportedLocales: EasyLocalization.of(context).supportedLocales,
      locale: EasyLocalization.of(context).locale,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        textTheme: GoogleFonts.montserratTextTheme(
          Theme.of(context).textTheme,
        ),
        fontFamily: 'Montserrat'
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/landing': (context) => LandingPage(),
        '/detail': (context) => DetailPage(),
        '/calculate': (context) => CalculatePage(),
        '/declaration': (context) => DeclarationPage(),
        '/buy': (context) => BuyPage(),
        '/get_back': (context) => GetBackPage(),
        '/thanks': (context) => ThanksPage(),
        '/faqs': (context) => FaqsPage(),
        '/support': (context) => SupportPage(),
      },
    );
  }
}
