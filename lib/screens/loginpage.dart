import 'package:flutter/material.dart';
class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}
class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
      padding: const EdgeInsets.all(45.0),
      color: Colors.black,
      child: Column(
        children: [
          const SizedBox(
            height: 50,
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
            height: 60,
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Email",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Colors.white),
            ),
          ),
          const TextField(
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
              hintText: 'abc@gmail.com',
              hintStyle: TextStyle(fontSize: 15.0, color: Colors.white),
            ),
            style: TextStyle(color: Colors.white),
          ),
          const Padding(padding: EdgeInsets.all(8.0)),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Password",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Colors.white),
            ),
          ),
          const TextField(
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
              hintText: '********',
              hintStyle: TextStyle(fontSize: 15.0, color: Colors.white),
            ),
            style: TextStyle(color: Colors.white),
          ),
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
            height: 70,
          ),
          Container(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  //change width and height on your need width = 200 and height = 50
                  minimumSize: Size(400, 50),
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
          const Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                SizedBox(width: 10),
                Text(
                  "Sign up here",
                  style: TextStyle(
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}