import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: profile1(),
  ));
}

class profile1 extends StatelessWidget {
  var text = [
    "Privacy",
    "Purchase History",
    "Help & Support",
    "Setting",
    "Invite a Friend",
    "Log out"
  ];

  var icon = [
    Icons.privacy_tip_outlined,
    Icons.history,
    Icons.help_outline_outlined,
    Icons.settings,
    Icons.add_alert_sharp,
    Icons.output_outlined
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                color: Colors.black,
              )),
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            left: 120,
            child: CircleAvatar(
              maxRadius: 70,
              backgroundImage:
                  NetworkImage("https://wallpapercave.com/wp/wp11847757.jpg"),
            ),
          ),
          const Positioned(
              top: 150,
              left: 80,
              child: Row(children: [
                CircleAvatar(
                    maxRadius: 30,
                    backgroundImage: NetworkImage(
                        "https://img.freepik.com/premium-vector/blue-social-media-logo_197792-1759.jpg")),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: CircleAvatar(
                      maxRadius: 25,
                      backgroundImage: NetworkImage(
                          "https://png.pngtree.com/png-vector/20221018/ourmid/pngtree-twitter-social-media-round-icon-png-image_6315985.png")),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: CircleAvatar(
                      maxRadius: 25,
                      backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyAO72LddLbU-b5J8LCVjU3av0p2UkqKYSg8S7-Ttz&s")),
                ),
                CircleAvatar(
                    maxRadius: 25,
                    backgroundImage: NetworkImage(
                        "https://cdn.pixabay.com/photo/2022/01/30/13/33/github-6980894_1280.png")),
              ])),
          Positioned(
            top: 234,
            left: 130,
            child: Column(
              children: [
                Text(
                  "Cillian Murphy",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "\n Actor",
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
          ),
         Positioned(
              top: 315,
              left: 30,
              child: Container(
                height: 245,
                width: 310,
                child: ListView(
                    children: List.generate(
                        6,
                        (index) => Card(
                              color: Colors.grey[200],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              child: ListTile(
                                  trailing: Icon(Icons.keyboard_arrow_right,
                                      color: Colors.black),
                                  leading:
                                      Icon(icon[index], color: Colors.black),
                                  title: Text(
                                    text[index],
                                    style: TextStyle(color: Colors.black),
                                  )),
                            ))),
              ))
        ],
      ),
    );
  }
}
