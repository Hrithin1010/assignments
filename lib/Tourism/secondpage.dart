import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: homescreen(),
  ));
}

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  List images = [
    "https://traveltriangle.com/blog/wp-content/uploads/2014/11/tea-gardens-in-munnar-og.jpg",
    "https://img.veenaworld.com/wp-content/uploads/2023/01/shutterstock_2044050407-scaled.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTM-KBpr_gJXIDxlgmcrlvJFnT_aIZLYaF4PA&usqp=CAU",
    "https://assets.vogue.in/photos/5ce41ea8b803113d138f5cd2/16:9/pass/Jaipur-Travel-Shopping-Restaurants.jpg",
  ];
  List places = ["Munnar", "Kashmir", "Leh", "Jaipur"];

  List numberid = ["700", "701", "702", "703"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Row(
              children: [
                MenuItemButton(
                    child: Icon(
                  Icons.menu,
                  color: Colors.black,
                )),
                Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: Text(
                    "Go",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  "Fast",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 0, 62, 113),
                    radius: 22,
                  ),
                )
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(19.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: 'Search...',
                      suffixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Popular Places",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 190),
                  child: Text(
                    "View All",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
            Flexible(
                child: GridView.builder(
              padding: const EdgeInsets.all(10.0),
              itemCount: 4,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                mainAxisExtent: MediaQuery.of(context).size.height * .30,
              ),
              itemBuilder: (context, index) => Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                        image: NetworkImage(images[index]), fit: BoxFit.cover)),
                child: Stack(
                  children: [
                    Positioned(
                        child: Container(
                      width: 55,
                      height: 26,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                  const Color.fromARGB(255, 0, 62, 113))),
                          onPressed: () {},
                          child: Text(
                            numberid[index],
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          )),
                    )),
                    Positioned(
                      bottom: 10,
                      left: 10,
                      child: Text(
                        places[index],
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
            )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(width: 350,
              height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                  const Color.fromARGB(255, 0, 62, 113))),
                  onPressed: (){}, child: Text("Explore Now"))),
            )
          ],
        ),
      ),
    );
  }
}
