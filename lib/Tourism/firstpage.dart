import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: firstpage(),
    debugShowCheckedModeBanner: false,
  ));
}

class firstpage extends StatefulWidget {
  @override
  State<firstpage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body: SafeArea(
        

        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 80, top: 50),
              child: Image.asset("assets/download2.png"),    
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80, top: 85),
              child: SizedBox(
                height: 40,
                width: 180,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Log In"),
                  style: ElevatedButton.styleFrom(
                    //maximumSize: Size(777, 997),
                    backgroundColor: Color.fromARGB(255, 63, 130, 223),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70, top: 50),
              child: Text("-Or-",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80, top: 30),
              child: SizedBox(
                height: 50,
                width: 260,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("LogIn With Facebook"),
                      FaIcon(FontAwesomeIcons.facebook)
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 15, 61, 185),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80, top: 30),
              child: SizedBox(
                height: 50,
                width: 260,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("LogIn With Twitter"),
                      FaIcon(FontAwesomeIcons.squareTwitter)
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 98, 140, 255),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80, top: 30),
              child: SizedBox(
                height: 50,
                width: 260,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("LogIn With Google"),
                      FaIcon(FontAwesomeIcons.google)
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 192, 7, 7),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
