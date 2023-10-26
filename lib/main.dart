import 'package:flutter/material.dart';
import 'screens/loginpage.dart';

void main() {
  runApp(const login());
}

class EchoLink extends StatefulWidget {
  const EchoLink({super.key});

  @override
  State<EchoLink> createState() => _EchoLinkState();
}

class _EchoLinkState extends State<EchoLink> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp();
  }
}
