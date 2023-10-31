import 'package:echo_link/screens/profile.dart';
import 'package:echo_link/screens/signuppage.dart';
import 'package:echo_link/widgets/Hamdrawer.dart';
import 'package:echo_link/widgets/NavigationMenu.dart';
import 'package:echo_link/widgets/PasswordFieldEntry.dart';
import 'package:echo_link/widgets/TextFieldEntry.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool obscureState = true;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: const Text('Echo Link',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        drawer: const Hamdrawer(),
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(40.0),
            color: Colors.black,
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Welcome Back",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 33,
                          color: Colors.deepPurple),
                      textAlign: TextAlign.center,
                    )),
                const SizedBox(
                  height: 5,
                ),
                const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Kindly login to continue",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    )),
                const SizedBox(
                  height: 50,
                ),
                const TextFieldEntry(title: "Login", hintText: "vitians@acmvit.com"),
                PasswordFieldEntry(title: "Password"),
                const SizedBox(
                  height: 30,
                ),
                const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                Container(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const NavigationMenu()));
                    },
                    style: ElevatedButton.styleFrom(
                        //change width and height on your need width = 200 and height = 50
                        minimumSize: const Size(400, 50),
                        primary: Colors.deepPurple,
                        shadowColor:
                            Colors.white, //specify the button's elevation color
                        elevation: 4.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0))),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                 Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Don't have an account?",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      TextButton(
                        child: const Text("Sign up here",style: TextStyle(
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.bold,
                            fontSize: 18)),
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const SignUp()));
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
