// void main() {
//   runApp(MaterialApp(
//     home: registrationpage(),
//   ));
// }

// class registrationpage extends StatefulWidget {
//   const registrationpage({super.key});

//   @override
//   State<registrationpage> createState() => _registrationpageState();
// }

// class _registrationpageState extends State<registrationpage> {
//   var formkey = GlobalKey<FormState>();
//   var showpass = true;
//   var showpass2 = true;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       //backgroundColor: Colors.blue[900],

//       body: Form(
//         key: formkey,
//         child: Container(
//           width: double.infinity,
//           height: double.infinity,
//           decoration: BoxDecoration(
//               image: DecorationImage(
//                   fit: BoxFit.cover,
//                   image: NetworkImage(
//                       "https://e0.pxfuel.com/wallpapers/207/274/desktop-wallpaper-marble-for-phone-aqua-blue-turquoise-pattern-teal-water-design-line-electric-blue-visual-arts.jpg"))),
//           child: Column(
//             children: [
//               LottieBuilder.network(
//                 "https://assets3.lottiefiles.com/packages/lf20_2jczmi5y.json",
//                 height: 200,
//                 width: 200,
//               ),
//               Column(
//                 children: [
//                   SizedBox(
//                     height: 50,
//                   ),
//                   TextFormField(
//                     decoration: InputDecoration(
//                         prefixIcon: Icon(Icons.email),
//                         suffixIcon: Icon(Icons.visibility_off),
//                         hintText: ("Email ID"),
//                         hintStyle: TextStyle(color: Colors.black45),
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(80)),
//                         filled: true,
//                         fillColor: Colors.tealAccent),
//                     validator: (usname) {
//                       if (usname!.isEmpty ||
//                           !usname.contains('@') ||
//                           usname.length < 6) {
//                         return "input a valid email";
//                       } else {
//                         return null;
//                       }
//                     },
//                   ),
//                   SizedBox(
//                     height: 15,
//                   ),
//                 ],
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: TextFormField(
//                   obscureText: showpass,
//                   decoration: InputDecoration(
//                       hintText: "Password",
//                       hintStyle: TextStyle(color: Colors.black45),
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.all(
//                         Radius.circular(90),
//                       )),
//                       prefixIcon: Icon(Icons.password),
//                       suffixIcon: IconButton(
//                           onPressed: () {
//                             setState(() {
//                               if (showpass) {
//                                 showpass = false;
//                               } else {
//                                 showpass = true;
//                               }
//                             });
//                           },
//                           icon: Icon(showpass == true
//                               ? Icons.visibility_off
//                               : Icons.visibility))),
//                   validator: (password) {
//                     if (password!.isEmpty || password.length < 8) {
//                       return "Not a valid password";
//                     } else {
//                       return null;
//                     }
//                   },
//                 ),
//               ),
//               SizedBox(
//                 height: 15,
//               ),
//               TextFormField(
//                 obscureText: showpass,
//                 decoration: InputDecoration(
//                     hintText: "Password",
//                     hintStyle: TextStyle(color: Colors.black45),
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(90))),
//                     prefixIcon: Icon(Icons.password),
//                     suffixIcon: IconButton(
//                         onPressed: () {
//                           setState(() {
//                             if (showpass2) {
//                               showpass2 = false;
//                             } else {
//                               showpass2 = true;
//                             }
//                           });
//                         },
//                         icon: Icon(showpass2 == true
//                             ? Icons.visibility_off
//                             : Icons.visibility))),
//                 validator: (password) {
//                   if (password!.isEmpty || password.length < 8) {
//                     return "Not a valid password";
//                   } else {
//                     return null;
//                   }
//                 },
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               ElevatedButton(
//                   onPressed: () {
//                     final valid = formkey.currentState!.validate();
//                     if (valid) {
//                       Navigator.of(context).push(MaterialPageRoute(
//                           builder: (context) => loginpage()));
//                     } else {
//                       Fluttertoast.showToast(
//                           msg: "Error try again",
//                           toastLength: Toast.LENGTH_SHORT,
//                           gravity: ToastGravity.CENTER,
//                           //timeInSecForIosWeb: 1,
//                           backgroundColor: Colors.red,
//                           textColor: Colors.white,
//                           fontSize: 16.0);
//                     }
//                   },
//                   child: Text(
//                     "Sign Up",
//                   )),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Row(
//                     children: [
//                       TextButton(
//                           onPressed: () {},
//                           child: Text("Do you have an account?")),
//                       TextButton(onPressed: () {}, child: Text("Login"))
//                     ],
//                   ),
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }