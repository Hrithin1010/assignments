import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: community(),
    debugShowCheckedModeBanner: false,
  ));
}

class community extends StatelessWidget {
  var heading = ["New community"];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Color(0xff128C7E),
          appBar: AppBar(
            backgroundColor: Color(0xff128C7E),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              PopupMenuButton(itemBuilder: (context) {
                return [
                  PopupMenuItem(child: Text("Settings")),
                ];
              }),
            ],
            bottom: TabBar(tabs: [
              Icon(Icons.people_rounded),
              Text("Chats",),
              Text("Status"),
              Text("Calls"),
            ]),
            title: Text("Whatsapp"),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Center(
                      child: ListTile(
                        title: Text(heading[index]),
                        leading: const CircleAvatar(),
                      ),
                    );
                  },
                  itemCount: 4,
                ),
              ],
            ),
          ),
        ));
  }
}
