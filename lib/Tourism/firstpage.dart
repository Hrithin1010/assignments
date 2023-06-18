import 'dart:ffi';

import 'package:flutter/material.dart';

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
    return Scaffold(
      body:SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/download2.png"),
                    alignment: Alignment.topCenter)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 100),
                          child: ElevatedButton(onPressed: (){}, child: Text("Log In"),style:ButtonStyle(
                            
                          ),),
                        )
                      ],
                    ),
          ),
        ),
        
        
      ),
    );
  }
}
