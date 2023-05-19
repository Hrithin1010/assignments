import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

void main() {
  runApp(MaterialApp(
    home: contactBook(),
  ));
}

class contactBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contacts"),
      ),
      body: ListView(
        children: [
          Card(
            color: Colors.white,
            child: ListTile(
              title: Text(
                "Messi",
                style: TextStyle(color: Colors.black),
              ),
              subtitle: Text(
                "735687323",
                style: TextStyle(color: Colors.black),
              ),
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQptoq4jXM5eNunh_GamhYnHJPdMAM5aXn4pg&usqp=CAU")),
              trailing: Wrap(
                children: [
                  Icon(Icons.phone),
                  SizedBox(
                    width: 25,
                  ),
                  Icon(Icons.message_rounded),
                  SizedBox(
                    width: 25,
                  ),
                  Icon(Icons.arrow_forward),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.white,
            child: ListTile(
              title: Text(
                "Ronaldinho",
                style: TextStyle(color: Colors.black),
              ),
              subtitle: Text(
                "8157993357",
                style: TextStyle(color: Colors.black),
              ),
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSM7aIPnQoVNvyI4WLrAawFbsi-IJvCfMaG6w&usqp=CAU")),
               trailing: Wrap(
                children: [
                  Icon(Icons.phone),
                  SizedBox(
                    width: 25,
                  ),
                  Icon(Icons.message_rounded),
                  SizedBox(
                    width: 25,
                  ),
                  Icon(Icons.arrow_forward),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.white,
            child: ListTile(
              title: Text(
                "Maradona",
                style: TextStyle(color: Colors.black),
              ),
              subtitle: Text(
                "8158767756",
                style: TextStyle(color: Colors.black),
              ),
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlqfWjchaaKCiKbdNKME8pwKmVE4MVXMDyyg&usqp=CAU")),
               trailing: Wrap(
                children: [
                  Icon(Icons.phone),
                  SizedBox(
                    width: 25,
                  ),
                  Icon(Icons.message_rounded),
                  SizedBox(
                    width: 25,
                  ),
                  Icon(Icons.arrow_forward),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.white,
            child: ListTile(
              title: Text(
                "Ronaldo",
                style: TextStyle(color: Colors.black),
              ),
              subtitle: Text(
                "6685687654",
                style: TextStyle(color: Colors.black),
              ),
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8W7IH9RUBuhGZfGXRdRfe3--bp8RTQ35PXA&usqp=CAU")),
               trailing: Wrap(
                children: [
                  Icon(Icons.phone),
                  SizedBox(
                    width: 25,
                  ),
                  Icon(Icons.message_rounded),
                  SizedBox(
                    width: 25,
                  ),
                  Icon(Icons.arrow_forward),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.white,
            child: ListTile(
              title: Text(
                "Iniesta",
                style: TextStyle(color: Colors.black),
              ),
              subtitle: Text(
                "6685743876",
                style: TextStyle(color: Colors.black),
              ),
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGtCwIwfq0rRbCEhGS9jg3Mz_cfpZ0K9gGbw&usqp=CAU")),
               trailing: Wrap(
                children: [
                  Icon(Icons.phone),
                  SizedBox(
                    width: 25,
                  ),
                  Icon(Icons.message_rounded),
                  SizedBox(
                    width: 25,
                  ),
                  Icon(Icons.arrow_forward),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.white,
            child: ListTile(
              title: Text(
                "De bruyne",
                style: TextStyle(color: Colors.black),
              ),
              subtitle: Text(
                "7654398765",
                style: TextStyle(color: Colors.black),
              ),
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToo7bq5vL9sHXDEiwI1yLgXZa_QfeRpoFigQ&usqp=CAU")),
               trailing: Wrap(
                children: [
                  Icon(Icons.phone),
                  SizedBox(
                    width: 25,
                  ),
                  Icon(Icons.message_rounded),
                  SizedBox(
                    width: 25,
                  ),
                  Icon(Icons.arrow_forward),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.white,
            child: ListTile(
              title: Text(
                "Puyol",
                style: TextStyle(color: Colors.black),
              ),
              subtitle: Text(
                "8765987654",
                style: TextStyle(color: Colors.black),
              ),
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVhTtKgTFmx6EjcbI99QRr1f840DxGgPH-FA&usqp=CAU")),
               trailing: Wrap(
                children: [
                  Icon(Icons.phone),
                  SizedBox(
                    width: 25,
                  ),
                  Icon(Icons.message_rounded),
                  SizedBox(
                    width: 25,
                  ),
                  Icon(Icons.arrow_forward),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
