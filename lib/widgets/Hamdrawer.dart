import 'package:echo_link/screens/homepage.dart';
import 'package:echo_link/screens/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:echo_link/screens/loginpage.dart';

class Hamdrawer extends StatefulWidget {
  const Hamdrawer({super.key});

  @override
  State<Hamdrawer> createState() => _HamdrawerState();
}

class _HamdrawerState extends State<Hamdrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.deepPurple,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Container(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Echo Dog',
                style: GoogleFonts.prompt(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/EchoLink-logo.png'),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home, color: Colors.white),
            title: Text(
              'Home',
              style: GoogleFonts.quicksand(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Home(),
                ),
              );
            },
          ),
          Divider(color: Colors.white),
          ListTile(
            leading: Icon(Icons.person, color: Colors.white),
            hoverColor: Colors.white,
            title: Text(
              'Profile',
              style: GoogleFonts.quicksand(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Prof(),
                ),
              );
            },
          ),
          Divider(color: Colors.white),
          ListTile(
            leading: Icon(Icons.login, color: Colors.white),
            hoverColor: Colors.white,
            title: Text(
              'Login',
              style: GoogleFonts.quicksand(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            onTap: () {
              // Navigator.of(context).pop();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const login(),
                ),
              );
            },
          ),
          Divider(color: Colors.white),
        ],
      ),
    );
  }
}
