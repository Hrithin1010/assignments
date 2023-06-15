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
                  padding: const EdgeInsets.only(left: 6, top: 1),
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
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://media.istockphoto.com/id/1182815477/photo/woman-with-shopping-between-store-shelf-portrait-copy-space.webp?b=1&s=170667a&w=0&k=20&c=TtK6TTpfrzsbG3r0EzOjr7brvTA3Uq_0-m9mET-eQxA="),
                          fit: BoxFit.cover),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
