import 'package:echo_link/screens/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const EchoLink());
}

class EchoLink extends StatefulWidget {
  const EchoLink({super.key});

  @override
  State<EchoLink> createState() => _EchoLinkState();
}

class _EchoLinkState extends State<EchoLink> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Localization Sample App',
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('es'), // Spanish
      ],
      home: login(),
    );
  }
}
