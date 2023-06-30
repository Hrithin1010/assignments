import 'package:assignments/SQLregistration/Login.dart';
import 'package:assignments/SQLregistration/signup.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginSign(),
  ));
}

class LoginSign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://img.freepik.com/free-vector/shiny-blue-geometric-background-design_1055-3184.jpg?size=626&ext=jpg&ga=GA1.2.424710435.1683353572&semt=ais"))),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Hello There!",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Autimatic identity verification which enables you two verify your identity",
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Image.asset(
                "assets/woman-with-laptop-on-book-stack-icon-vector-45353617.webp",
                height: 290,
                width: 240,
              ),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => loginSQL()));
                    },
                    child: Text(
                      "Login",
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        minimumSize: Size(300, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => SignupSQL()));
                    },
                    child: Text("Sign up"),
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(300, 50),
                        primary: Colors.green,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ],
              ),
            ]),
      ),
    ));
  }
}
