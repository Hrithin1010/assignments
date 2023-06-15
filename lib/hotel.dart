import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: hotelui(),
  ));
}

class hotelui extends StatefulWidget {
  const hotelui({Key? key}) : super(key: key);

  @override
  State<hotelui> createState() => _hoteluiState();
}

class _hoteluiState extends State<hotelui> {
  var icn = [Icons.star];
  var text = [
    "Located in Vythiri, 3.7 km from Pookode Lake,"
        " Flora Vythiri Resort provides accommodation with free bikes,"
        " free private parking, an outdoor swimming pool and a fitness centre."
        " With a garden, the 5-star resort has air-conditioned rooms with free WiFi, "
        "each with a private bathroom. The accommodation offers karaoke and a kids' club. "
        "Our stay in Flora Vythiri was very pleasant and luxurious."
        " Rooms were super clean and spacious. "
        "Property is surrounded by greenary and tea estates, "
        "offering scenic views from the room."
        " Food was amazing with enough options for veg/non veg, "
        "although few more food options can be added in the menu. "
        "The hotel staff was courteous and went out of their way to make us feel comfortable."
        " You literally get a 5 star treatment at an affordable price."
        " I would definitely love to visit this resort again."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            decoration: const BoxDecoration(image: DecorationImage(alignment: Alignment.topCenter,
            image: NetworkImage("https://static.toiimg.com/photo/49225475/.jpg"))),
         child: Stack(children: [
           Positioned(left:20,top: 150,
               child: Text("CROWN PLAZA\nKOCHI,KERALA",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold))),
           Positioned(left:14,top: 190,
               child: Container(height: 30,width: 100,decoration: BoxDecoration(color: Colors.grey,
                   borderRadius: BorderRadius.circular(20)),
                 child: Center(child: Text("8.4/8.5 reviews",style: TextStyle(fontSize: 10,
                     color: Colors.white))))),
           Positioned(left: 300,top: 290,child: Icon(Icons.favorite_border_outlined,color: Colors.white,)),
           Positioned(left: 14,top: 290,child:Row(
             children: [
               Icon(Icons.favorite,color: Colors.purple),Icon(Icons.favorite,color: Colors.purple),
               Icon(Icons.favorite,color: Colors.purple),Icon(Icons.favorite,color: Colors.purple),
               Icon(Icons.favorite_border_outlined,color: Colors.purple),
             ],
           ) ),
           Positioned(left:14,top:270,child: Row(
             children: [
               Icon(Icons.location_on,color:Colors.grey[600] ),
               Text("8 km from lulu mall",style: TextStyle(fontSize: 12,color: Colors.grey[600])),
             ],
           )),
           Positioned(left: 300,top: 270,child: Row(children: [
             Icon(Icons.attach_money,color: Colors.purple),
             Text("200",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.purple),)
           ])),
           Positioned(left:295,top: 295,child: Text("/ per night",style: TextStyle(fontSize: 12,color: Colors.grey[600]))),
           Positioned(left: 40,top: 330,
               child: ElevatedButton(style: ButtonStyle(fixedSize: MaterialStatePropertyAll(Size(275, 50)),backgroundColor:MaterialStatePropertyAll(Colors.purple) ,
                   shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius:BorderRadius.circular(15)))),
                   onPressed: (){}, child: Text("Book Now"))),
           Positioned(left:14,right: 14,top: 390,child: SizedBox(height: 190,width: 340,
             child: SingleChildScrollView(
               child: Text(
                   "Located in Vythiri, 3.7 km from Pookode Lake,"
                   " Flora Vythiri Resort provides accommodation with free bikes,"
                   " free private parking, an outdoor swimming pool and a fitness centre."
                   " With a garden, the 5-star resort has air-conditioned rooms with free WiFi, "
                   "each with a private bathroom. The accommodation offers karaoke and a kids' club. "
                   "Our stay in Flora Vythiri was very pleasant and luxurious."
                   " Rooms were super clean and spacious. "
                   "Property is surrounded by greenary and tea estates, "
                   "offering scenic views from the room."
                   " Food was amazing with enough options for veg/non veg, "
                   "although few more food options can be added in the menu. "
                   "The hotel staff was courteous and went out of their way to make us feel comfortable."
                   " You literally get a 5 star treatment at an affordable price."
                   " I would definitely love to visit this resort again."
                       "Located in Vythiri, 3.7 km from Pookode Lake,"
                       " Flora Vythiri Resort provides accommodation with free bikes,"
                       " free private parking, an outdoor swimming pool and a fitness centre."
                       " With a garden, the 5-star resort has air-conditioned rooms with free WiFi, "
                       "each with a private bathroom. The accommodation offers karaoke and a kids' club. "
                       "Our stay in Flora Vythiri was very pleasant and luxurious."
                       " Rooms were super clean and spacious. "
                       "Property is surrounded by greenary and tea estates, "
                       "offering scenic views from the room."
                       " Food was amazing with enough options for veg/non veg, "
                       "although few more food options can be added in the menu. "
                       "The hotel staff was courteous and went out of their way to make us feel comfortable."
                       " You literally get a 5 star treatment at an affordable price."
                       " I would definitely love to visit this resort again."),
             ),
           ))
         ]),
      ),)
    );
  }
}

///
//               Column(children: [
//               Row(children: [
//                 Icon(Icons.star,color: Colors.purple),Icon(Icons.star,color: Colors.purple),
//                 Icon(Icons.star,color: Colors.purple),Icon(Icons.star,color: Colors.purple),
//                 Icon(Icons.star,color: Colors.grey),
//               ]),
//             Text("8km from lulu mall",style: TextStyle(color: Colors.grey),)],)