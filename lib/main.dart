import 'package:echo_link/screens/loginpage.dart';
import 'package:echo_link/screens/profile.dart';
import 'package:flutter/material.dart';

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
      home: Scaffold(
        body: Prof(),
      ),
    );
  }
}
