import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: profile2(),
  ));
}

class profile2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 60, 109),
        title: Center(child: Text("Profile")),
        actions: [
          PopupMenuButton(itemBuilder: (context) {
            return [PopupMenuItem(child: Text("settings"))];
          })
        ],
      ),
      drawer: Drawer(),
      body: Stack(
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://images3.alphacoders.com/127/1273194.png'),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 230),
            height: 135,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 1,
                ),
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(
                        "https://akm-img-a-in.tosshub.com/businesstoday/images/story/202212/1_22-sixteen_nine.jpg?size=1200:675"))),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Icon(Icons.message),
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    const Color.fromARGB(255, 0, 74, 135),
                  ),
                  shape: MaterialStatePropertyAll(CircleBorder()),
                ),
              ),
              SizedBox(
                height: 590,
                width: 170,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.red[500]),
                      shape: MaterialStatePropertyAll(CircleBorder())),
                  onPressed: () {},
                  child: Icon(Icons.add, color: Colors.white)),
            ],
          ),
          SizedBox(
            height: 420,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(
                  child: Column(
                    children: [
                      Text(
                        "Lionel messi",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 19),
                      ),
                      Text(
                        "Footballer",
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
