import 'package:assignments/hellothere.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

void main(){
  runApp(MaterialApp(
    home: Signup(),
  ));
}

class Signup extends StatefulWidget {
 

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
                      "https://img.freepik.com/free-vector/vector-blue-wave-transparent_1055-7084.jpg?size=626&ext=jpg&ga=GA1.2.424710435.1683353572&semt=ais"))),
          
           child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            Text("Sign Up",
            style: TextStyle(
              fontSize: 60,fontWeight: FontWeight.bold,color: Colors.black,
            ),),
            SizedBox(height: 20,),
            Text("Create an account its free",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),),
            SizedBox(height: 20,),

            Padding(padding: const EdgeInsets.only(
                bottom: 10,right: 10,left: 10
              ),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.account_box_outlined,color: Colors.black,),
                      labelText: "Email ID",labelStyle: TextStyle(color: Colors.black,fontSize: 18),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60),
                      )
                    ),
                  ),
                SizedBox(height: 20,),
                
                 TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.visibility_off_rounded,color: Colors.black,),
                  suffixIcon: Icon(Icons.visibility_off,color: Colors.black,),
                  labelText: "Password",labelStyle: TextStyle(color: Colors.black,fontSize: 18,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    ),
                ),
              ),
              SizedBox(height: 20,),
                
                 TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.visibility_off_rounded,color: Colors.black,),
                  suffixIcon: Icon(Icons.visibility_off,color: Colors.black,),
                  labelText: "Password",labelStyle: TextStyle(color: Colors.black,fontSize: 18,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    ),
                ),
              ),
              SizedBox(height: 20,),

               ElevatedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));
               }, child:Text("Sign Up"),
                style: ElevatedButton.styleFrom(primary: Colors.green,minimumSize: Size(300, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),),
                ],
              ),
              ),
              SizedBox(height: 20,),
              Text("Do you have an account? Login",
              style: TextStyle(fontSize: 15),),

          ],
        ),
         ),
       ),

    );
  }
}