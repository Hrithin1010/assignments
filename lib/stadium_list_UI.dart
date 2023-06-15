import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

void main() {
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false, home: stadium_list()),
  );
}

class stadium_list extends StatelessWidget {
  var stadiumName = [
    "Camp Nou",
    "Jawaharlal Nehru",
    "Signal Iduna Park",
    "Old Trafford",
    "San Siro Stadium"
  ];
  var club = [
    "FC Barcelona",
    "Kerala blasters",
    "Borussia Dortmund",
    "Manchester United",
    "A.C.Milan"
  ];
  var Capacity = [
    "Capacity:99,354",
    "Capacity:80,000",
    "Capacity:81,365",
    "Capacity:74,310",
    "Capacity:75,817",
  ];

  var country = ["Spain", "India", "Germany", "England", "Italy"];

  var images = [
    "https://images2.minutemediacdn.com/image/upload/c_crop,w_6530,h_3673,x_0,y_5/c_fill,w_1440,ar_16:9,f_auto,q_auto,g_auto/images/GettyImages/mmsport/90min_en_international_web/01g65xk2fqrv7sx79ww5.jpg",
    "https://www.indiansuperleague.com/static-resources/images/venues/medium/498/1.jpg",
    "https://www.bvb.de/var/ezdemo_site/storage/images/media/bilder/galeriebilder/signal-iduna-park2/930061-1-ger-DE/Signal-Iduna-Park_bvbinfobild_regular.jpg",
    "https://frontofficesports.com/wp-content/uploads/2023/01/FOS-23-1.17-Man-Utd-Old-Trafford.jpg",
    "https://e0.365dm.com/19/09/2048x1152/skysports-ac-milan-inter-milan_4786980.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(28),
        child: AppBar(
          title: const Text("Football Stadiums around the world",
              style:
                  TextStyle(fontWeight: FontWeight.w500, color: Colors.white)),
          backgroundColor: const Color.fromARGB(255, 1, 44, 80),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(
              5,
              (index) => Padding(
                    //Padding is set to separate each containers
                    padding: const EdgeInsets.all(8.0),
                    // blue box container with specific height width and curved corner
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 3, 42, 74),
                          gradient: LinearGradient(
                              colors: [
                                 
                               // Color.fromARGB(255, 36, 83, 237),
                                Colors.black,
                                Color.fromARGB(255, 45, 137, 198)
                                
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter),
                          borderRadius: BorderRadius.circular(9)),
                      height: 150,
                      width: double.infinity,
                      //Stack is created inside the orange container box
                      child: Stack(
                        children: [
                          Padding(
                              // Here a padding of 8 is set only on the left side of the image
                              padding: const EdgeInsets.only(left: 8),
                              child: Image.network(
                                images[index],
                                fit: BoxFit.cover,
                                width: 225,
                                // Height is set to infinity to cover
                                // the total height of the blue container
                                height: double.infinity,
                              )),
                          // Positioned is used to align the text inside the container
                          Positioned(
                            left: 235,
                            top: 30,
                            child: Text(
                              stadiumName[index],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Positioned(
                              left: 235,
                              top: 70,
                              child: Text(
                                club[index],
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic),
                              )),
                          Positioned(
                              left: 235,
                              top: 95,
                              child: Text(
                                Capacity[index],
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic),
                              )),
                          Positioned(
                              left: 235,
                              top: 118,
                              child: Text(
                                country[index],
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic),
                              )),
                        ],
                      ),
                    ),
                  )),
        ),
      ),
    );
  }
}
