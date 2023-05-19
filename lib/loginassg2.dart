import 'package:assignments/hellothere.dart';
import 'package:assignments/signupassg2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

void main() {
  runApp(
    MaterialApp(
      home: login(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class login extends StatefulWidget {
  @override
  State<login> createState() => _loginState();
  var showpass = true;
}

class _loginState extends State<login> {
  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiSQoAMHJ3EUBgxQUgupzMJieaObkkAoLjNw&usqp=CAU"))),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Login",
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
                  "Welcome back! login with your credentials",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 10, right: 10, left: 10),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.account_box_sharp,color: Colors.black,),
                            labelText: "Email ID",labelStyle: TextStyle(color: Colors.black,fontSize: 18,),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(60),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.visibility_off_rounded,color: Colors.black,),
                          suffixIcon: Icon(Icons.visibility_off,color: Colors.black,),
                          labelText: "Password",labelStyle: TextStyle(color: Colors.black,fontSize: 20,),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => HomePage()));
                        },
                        child: Text("Login"),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            minimumSize: Size(300, 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Signup(),
                        ),
                      );
                    },
                    child: Text("Sign Up"),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      minimumSize: Size(300, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))
                    ),
                    ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
