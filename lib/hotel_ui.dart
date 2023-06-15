import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: hotel_ui(),
  ));
}
class hotel_ui extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: 300,
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/29/0b/80/8b/crowne-plaza-dubai-deira.jpg?w=700&h=-1&s=1"),
          fit: BoxFit.cover),
        ),
        child: Stack(
          children: [
            Positioned(
              top:185,
              left: 30,
              child: Text("Crowne plaza",
            
              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),
              ),),
               Positioned(
              top:210,
              left: 30,
              child: Text("Kochi, Kerala",
              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),),
              Container(
                child: Stack(
                  children: [
                    ElevatedButton(onPressed: (){}, child: Text("data"),
                    ),
                    Positioned(
                      child: Row(
                      
                      ),
                    )
                  ],
                ),
              )
          ],
        ),
      ),
      
    );
  }
}