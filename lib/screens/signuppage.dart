import 'package:echo_link/screens/loginpage.dart';
import 'package:echo_link/widgets/Hamdrawer.dart';
import 'package:echo_link/widgets/PasswordFieldEntry.dart';
import 'package:echo_link/widgets/TextFieldEntry.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

bool obscureState = true;

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Echo Link',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: const Hamdrawer(),
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(40, 40, 40, 120),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const TextFieldEntry(title: "Name", hintText: ""),
                const TextFieldEntry(title: "Age", hintText: ""),
                const TextFieldEntry(
                    title: "Email", hintText: "vitians@acmvit.com"),
                PasswordFieldEntry(title: "Password"),
                PasswordFieldEntry(title: "Confirm Password"),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const login()));
              },
              style: ElevatedButton.styleFrom(
                  //change width and height on your need width = 200 and height = 50
                  minimumSize: const Size(200, 50),
                  primary: Colors.deepPurple,
                  shadowColor:
                      Colors.white, //specify the button's elevation color
                  elevation: 4.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0))),
              child: const Text(
                "Sign Up",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
