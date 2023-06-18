import 'package:assignments/farmersfreshzone/cardsx.dart';
import 'package:assignments/farmersfreshzone/carousal.dart';
import 'package:assignments/farmersfreshzone/categoriesgridview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Framersfresh(),
    debugShowCheckedModeBanner: false,
  ));
}

class Framersfresh extends StatelessWidget {
  List names = ["vegetables", "Fruits", "Exotic", "Fresh cuts", "Spices"];
  List image = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCQtSA2KGPIuudCmPPG6ySwb7WCgWc7kT_xw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCQtSA2KGPIuudCmPPG6ySwb7WCgWc7kT_xw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCQtSA2KGPIuudCmPPG6ySwb7WCgWc7kT_xw&usqp=CAU",
  ];
  List items = ["Vegetables", "Fruits", "Exotic"];
  List imagescount = [
    "https://images.unsplash.com/photo-1584526896127-c5cfc9e434e5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8Y2Fycm90fGVufDB8fDB8fHww&auto=format&fit=crop&w=600&q=60",
    "https://images.unsplash.com/photo-1571771894821-ce9b6c11b08e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=580&q=80",
    "https://images.unsplash.com/photo-1583663848850-46af132dc08e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8YnJvY29saXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60",
    "https://plus.unsplash.com/premium_photo-1664372599369-dd9f4ee07254?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8cG90YXRvfGVufDB8fDB8fHww&auto=format&fit=crop&w=600&q=60",
    "https://images.unsplash.com/photo-1561136594-7f68413baa99?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8dG9tYXRvfGVufDB8fDB8fHww&auto=format&fit=crop&w=600&q=60",
    "https://images.unsplash.com/photo-1618512496248-a07fe83aa8cb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8b25pb258ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60"
  ];

  List namecount = ["Carrot", "Banana", "Brocoli", "Potato", "Tomato", "Onion"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            actions: [
              Row(
                children: [
                  Icon(Icons.location_on),
                  Text("Kochi"),
                  Icon(Icons.keyboard_arrow_down_sharp),
                ],
              )
            ],
            title: Text("Farmers Fresh Zone"),
            backgroundColor: Colors.green,
            bottom: AppBar(
              backgroundColor: Colors.green,
              title: Padding(
                padding: EdgeInsets.only(
                  right: 3,
                  left: 3,
                ),
                child: SizedBox(
                  child: Container(
                    height: 43,
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderSide: BorderSide(),
                              borderRadius: BorderRadius.circular(9)),
                          hintText: "Search for Vegetables and fruits....",
                          prefixIcon: Icon(Icons.search)),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      names.length,
                      (index) => Padding(
                        padding: EdgeInsets.only(top: 4, left: 8),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            names[index],
                            style: TextStyle(color: Colors.green),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.green[100],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100))),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(2)),
                SizedBox(height: 150, child: carousalx()),
                Padding(padding: EdgeInsets.all(2)),
                SizedBox(
                  child: cardsx(),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 9, top: 9),
                  child: Row(
                    children: [
                      Text(
                        "Shop By Category",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: categoriesgrid(),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 300,
                    height: 165,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://media.istockphoto.com/id/1182815477/photo/woman-with-shopping-between-store-shelf-portrait-copy-space.webp?b=1&s=170667a&w=0&k=20&c=TtK6TTpfrzsbG3r0EzOjr7brvTA3Uq_0-m9mET-eQxA="),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 9, top: 9),
                  child: Row(
                    children: [
                      Text(
                        "Best selling products",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 2,
                    shrinkWrap: true,
                    
                    children: List.generate(
                        6,
                        (index) => Container(
                          color: Colors.grey,
                          height: 200,
                          width: 100,
                          child: Column(children: [
                                Image(image:NetworkImage(imagescount[index]),height: 200,width: double.infinity,),
                              ]),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
