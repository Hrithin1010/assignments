import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:homesql(),
  ));
}
class homesql extends StatefulWidget {
  const homesql({super.key});

  @override
  State<homesql> createState() => _homesqlState();
}

class _homesqlState extends State<homesql> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Image.asset("assets/Animation/75705-welcome-animation.json")
      ),

    );
  }
}