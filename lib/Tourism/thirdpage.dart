import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: thirdpage(),
  ));
}

class thirdpage extends StatefulWidget {
  const thirdpage({super.key});

  @override
  State<thirdpage> createState() => _thirdpageState();
}

class _thirdpageState extends State<thirdpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(top: 60),
                child: ListTile(
                  title: Text(
                    'Most Furious Place Place & Peaceful',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'natural place',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      Wrap(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Text(
                              '5.0 Rating',
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  trailing: Container(
                    height: 80,
                    width: 75,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDGlAevBJPBUitA3dknIJ-gE9O11-ejA0kC6lISdb15PUr2K7BWd1WktngRp4RWlEG0aQ&usqp=CAU"),
                            fit: BoxFit.cover)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 43, left: 16),
                child: Text(
                  "About Places",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 10, right: 16),
                child: Text(
                  "Jaipur, popularly known as the Pink City of India, is the largest city in the state of Rajasthan. It is also the capital of Rajasthan. Known for Hawa Mahal, Jal Mahal, Amer Fort, Jantar Mantar and several other places to visit, Jaipur has numerous stories to tell.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 16),
                child: Text(
                  "Special Facilities",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      child: Row(
                        children: [
                          Icon(
                            Icons.car_rental,
                            color: Colors.blue,
                          ),
                          Text(
                            "Parking",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      child: Row(
                        children: [
                          Icon(
                            Icons.support_agent,
                            color: Colors.blue,
                          ),
                          Text(
                            "24*7 Support",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      child: Row(
                        children: [
                          Icon(
                            Icons.wifi,
                            color: Colors.blue,
                          ),
                          Text(
                            "Free Wifi",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 10),
                child: Container(
                  width: 350,
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxoD-ACeX-AhDCmUrNHZvb5FxqKIuX5haAqA&usqp=CAU"),
                          fit: BoxFit.cover)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Special Facilities",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    ElevatedButton(onPressed: () {}, child: Text("Adult 02")),
                    SizedBox(
                      width: 6,
                    ),
                    ElevatedButton(onPressed: () {}, child: Text("Adult 02")),
                    SizedBox(
                      width: 6,
                    ),
                    ElevatedButton(onPressed: () {}, child: Text("Adult 02")),
                    SizedBox(
                      width: 6,
                    ),
                    ElevatedButton(onPressed: () {}, child: Text("Adult 02"))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                    width: 345,
                    height: 50,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                const Color.fromARGB(255, 0, 62, 113))),
                        onPressed: () {},
                        child: Text("Explore Now"))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
