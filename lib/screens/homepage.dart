import 'package:echo_link/widgets/Hamdrawer.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1e1e1e),
        title: const Text('Echo Link'),
      ),
      drawer: const Hamdrawer(),
      body: Container(
        child: const Center(
          child: Text('Welcome back!'),
        ),
      ),
    );
  }
}
