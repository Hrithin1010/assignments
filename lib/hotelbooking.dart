import 'package:flutter/material.dart';

var hotelimg = [
  "https://cache.marriott.com/content/dam/marriott-renditions/COKMC/cokmc-deluxe-0055-hor-wide.jpg?output-quality=70&interpolation=progressive-bilinear&downsize=1336px:*",
  "https://cache.marriott.com/content/dam/marriott-renditions/COKMD/cokmd-twin-guestroom-9147-hor-wide.jpg?output-quality=70&interpolation=progressive-bilinear&downsize=1336px:*",
  "https://images.trvl-media.com/lodging/6000000/5280000/5276000/5275933/d6e617c0.jpg?impolicy=fcrop&w=1200&h=800&p=1&q=medium",
  "https://media.radissonhotels.net/image/radisson-blu-hotel-kochi/guest-room/16256-114070-f63656482_3xl.jpg",
  "https://imgcy.trivago.com/c_fill,d_dummy.jpeg,e_sharpen:60,f_auto,h_627,q_auto,w_1200/itemimages/57/68/5768424.jpeg",
  "https://cf.bstatic.com/xdata/images/hotel/max1024x768/181799229.jpg?k=177de6c94e95a110e1d252e3d25b9b869d78d24147c173f5208622ede98a1fa1&o=&hp=1",
  "https://www.ihcltata.com/content/dam/tajhotels/ihcl/press-room/kocki-2-press.jpg"
];
var names = [
  "Marriot Hotel",
  "LE Meridian",
  "Crown Plaza",
  "Raddison Blu",
  "Kochi Sugar Hotel",
  "Grand Hyatt",
  "IHCL Hotels"
];
var Subname = [
  "Five Star Hotels in Kochi",
  "Five Star Hotels in Kochi",
  "Five Star Hotels in Kochi",
  "Five Star Hotels in Kochi",
  "Five Star Hotels in Kochi",
  "Five Star Hotels in Kochi",
  "Five Star Hotels in Kochi"
];
var name3 = [
  "180\$ per Night",
  "180\$ per Night",
  "180\$ per Night",
  "180\$ per Night",
  "180\$ per Night",
  "180\$ per Night",
  "180\$ per Night",
];
var name4 = ["4.5 *", "4.5 *", "4.5 *", "4.5 *", "4.5 *", "4.5 *", "4.5 *"];

var button = [
  "Book Now",
  "Book Now",
  "Book Now",
  "Book Now",
  "Book Now",
  "Book Now",
  "Book Now"
];

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: firstpagehotel(),
  ));
}

class firstpagehotel extends StatelessWidget {
  const firstpagehotel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                        alignment: Alignment.topLeft,
                        child: Text("Hello @rjun",
                            style:
                                TextStyle(color: Colors.grey, fontSize: 17))),
                    SizedBox(
                      width: 230,
                    ),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      'https://media.istockphoto.com/id/525417925/photo/luxury-beach-resort.jpg?s=612x612&w=0&k=20&c=bLaHAcn9j6YJmgupkxRB99kICnVv10OFZakzRkuhGJA='))),
                        ))
                  ],
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Find Your Favourite Hotel',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[200],
                        hintText: 'Search For Hotels',
                        hintStyle: TextStyle(fontSize: 15),
                        suffixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Popular Hotels',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      )),
                ),
                Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
                    height: MediaQuery.of(context).size.height * 0.35,
                    child: ListView.builder(
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: hotelimg.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Container(
                              decoration: BoxDecoration(boxShadow: [
                                BoxShadow(
                                    offset: Offset(5.0, 2.0),
                                    color: Colors.white70,
                                    blurRadius: 2.0,
                                    spreadRadius: 2.0)
                              ]),
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: Column(children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(
                                          10,
                                        )),
                                    child: Image.network(
                                      hotelimg[index],
                                      fit: BoxFit.cover,
                                      width: 140,
                                      height: 120,
                                    )

                                    // child: Center(child: Text(numbers[index].toString(), style: TextStyle(color: Colors.white, fontSize: 36.0),)),
                                    ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(names[index],
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500)),
                                ),
                                Text(Subname[index],
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12)),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        name3[index],
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 11),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        name4[index],
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 11),
                                      ),
                                    )
                                  ],
                                )
                              ]),
                            ),
                          );
                        })),
                Row(
                  children: [
                    Text(
                      'Hotel Packages',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                    ),
                    SizedBox(
                      width: 190,
                    ),
                    Text(
                      'View all',
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Container(
                    alignment: Alignment.topLeft,
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: ListView.builder(
                      physics: ScrollPhysics(),
                      itemCount: 7,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          width: 55,
                          height: 112,
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  height:
                                      MediaQuery.of(context).size.height * 0.5,
                                  hotelimg[index],
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text(
                                      names[index],
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      Subname[index],
                                      style: TextStyle(color: Colors.blueGrey),
                                    ),
                                    Row(
                                      children: [
                                        Text(name3[index]),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          name4[index],
                                          style: TextStyle(color: Colors.blue),
                                        ),
                                      ],
                                    ),
                                    ElevatedButton(
                                        onPressed: () {},
                                        child: Text(
                                          button[index],
                                          style: TextStyle(fontSize: 8),
                                        ))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.bookmark_add), label: ""),
          ],
        ));
  }
}
