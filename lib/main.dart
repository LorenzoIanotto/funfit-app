import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:funfit/routes.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:funfit/models/PageNotFound.dart';
import 'package:funfit/pages/AboutPage/AboutPage.dart';
import 'pages/HomePage/HomePage.dart';
import 'themes.dart';

void main() => runApp(FunFitApp());

class FunFitApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FunFit',
      theme: lightTheme(),
      darkTheme: darkTheme(),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [const Locale('it', '')],
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/':
            return SlideLeftRoute(widget: HomePage());
          case '/AboutPage':
            return SlideLeftRoute(widget: AboutPage());
          default:
            return SlideLeftRoute(widget: PageNotFound());
        }
      },
    );
  }
}
