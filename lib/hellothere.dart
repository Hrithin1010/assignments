import 'package:assignments/loginassg2.dart';
import 'package:assignments/signupassg2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
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
          //  decoration: BoxDecoration(
          //     image: DecorationImage(
          //         fit: BoxFit.cover,
          //         image: NetworkImage(
          //             "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiSQoAMHJ3EUBgxQUgupzMJieaObkkAoLjNw&usqp=CAU")),),
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
                    onPressed: () {},
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
                    onPressed: () {},
                    child: Text("Sign up"),
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(300, 50),
                        primary: Colors.green,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),

                  //    ElevatedButton(onPressed: (){
                  //   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>login()));
                  //  }, child:Text("Sign Up"),
                  //   style: ElevatedButton.styleFrom(primary: Colors.green,minimumSize: Size(300, 50),
                  //     shape: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(20)
                  //     )
                  //   ),),

                  //    ElevatedButton(onPressed: (){
                  //   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Signup()));
                  //  }, child:Text("Sign Up"),
                  //   style: ElevatedButton.styleFrom(primary: Colors.green,minimumSize: Size(300, 50),
                  //     shape: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(20)
                  //     )
                  //   ),),
                ],
              )

// MaterialButton(
//                     minWidth: double.infinity,
//                     height:60,
//                     onPressed: (){

//                     },
//                     color: Colors.green,
//                     shape: RoundedRectangleBorder(
//                       side: BorderSide(
//                         color: Colors.black,
//                       ),
//                       borderRadius: BorderRadius.circular(40)
//                     ),
//                     child: Text("Login",style: TextStyle(
//                       fontWeight: FontWeight.w600,fontSize: 16,color: Colors.white70,

//                     ),),

// ),

// MaterialButton(
//                       minWidth: double.infinity,
//                       height:60,
//                       onPressed: (){

//                       },
//                       color: Colors.green,
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(40)
//                       ),
//                       child: Text("Sign UP",style: TextStyle(
//                         fontWeight: FontWeight.w600,fontSize: 16,color: Colors.white,

//                       ),),
//                     ),

              // Padding(padding: const EdgeInsets.only(
              //   bottom: 10,right: 10,left: 10
              // ),
              // child: TextField(
              //   decoration: InputDecoration(
              //     labelText: "Login",
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(60),
              //     )
              //   ),
              // ),),
            ],
          ),
        ),
      ),
    );
  }
}
