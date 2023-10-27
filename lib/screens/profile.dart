import 'package:echo_link/widgets/Hamdrawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Prof extends StatefulWidget {
  const Prof({super.key});

  @override
  State<Prof> createState() => _ProfState();
}

class _ProfState extends State<Prof> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff1e1e1e),
        title: const Text('Echo Link'),
      ),
      drawer: const Hamdrawer(),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Image.asset('assets/images/echo.png'),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 260,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/proficon.png'),
                      radius: 80,
                    ),
                  ],
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
              child: Text(
                'PROFILE',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: "Poppins",
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.person,
                                        color: Colors.white,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'DOGE MUSIC',
                                        style: GoogleFonts.eduTasBeginner(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Emailid@gmail.com',
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.caveat(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 23,
                                  color:
                                      const Color.fromARGB(255, 236, 244, 78)),
                            ),
                            Row(
                              children: [
                                const Icon(Icons.lock, color: Colors.white),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 10, 0),
                                  child: Text(
                                    'Logout',
                                    style: GoogleFonts.caveat(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
