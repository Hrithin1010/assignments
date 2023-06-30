import 'package:assignments/SQLregistration/Login.dart';
import 'package:assignments/SQLregistration/MainS.dart';
import 'package:assignments/hellothere.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

void main() {
  runApp(MaterialApp(
    home: SignupSQL(),
  ));
}

class SignupSQL extends StatefulWidget {
  @override
  State<SignupSQL> createState() => _SignupState();
}

class _SignupState extends State<SignupSQL> {

  final email_controller = TextEditingController();
  final username_controller=TextEditingController();
  final password_controller=TextEditingController();
  final confirmpassword_controller=TextEditingController();

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
                      "https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/tp201-sasi-37-km1kdpwx.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=8f41194795258a863a3e3bf27def5b5e"))),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Create an account its free",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 10, right: 10, left: 10),
                      child: Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.account_box_outlined,
                                  color: Colors.black,
                                ),
                                labelText: "Email ID",
                                labelStyle: TextStyle(
                                    color: Colors.black, fontSize: 18),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(60),
                                )),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                bottom: 10, right: 10, left: 10),
                            child: Column(
                              children: [
                                TextField(
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.account_box_outlined,
                                        color: Colors.black,
                                      ),
                                      labelText: "Username",
                                      labelStyle: TextStyle(
                                          color: Colors.black, fontSize: 18),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(60),
                                      )),
                                ),
                                SizedBox(
                                  height: 18,
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.visibility_off_rounded,
                                      color: Colors.black,
                                    ),
                                    suffixIcon: Icon(
                                      Icons.visibility_off,
                                      color: Colors.black,
                                    ),
                                    labelText: "Password",
                                    labelStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 18,
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.visibility_off_rounded,
                                      color: Colors.black,
                                    ),
                                    suffixIcon: Icon(
                                      Icons.visibility_off,
                                      color: Colors.black,
                                    ),
                                    labelText: "Confirm Password",
                                    labelStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                ElevatedButton(
                                onPressed: () {
                                  datass();
                                },
                                  // {
                                  //   Navigator.of(context).push(
                                  //       MaterialPageRoute(
                                  //           builder: (context) => loginSQL()));
                                  // },
                                  child: Text("Sign Up"),
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.green,
                                      minimumSize: Size(300, 50),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20))),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Do you have an account? Login",
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
    
  }

  Future<void>datass() async{
    await sql_registration.datass(email_controller.text,username_controller.text,password_controller.text,confirmpassword_controller.text);
  }
}
