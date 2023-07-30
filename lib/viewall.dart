import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: MyWidget(),));
}

class MyWidget extends StatefulWidget {

  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool viewAll = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Your list widget here
        ListView.builder(
          itemCount: viewAll ? items.length : 5, // Show all items if viewAll is true
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(items[index]),
              // Add other widgets to display additional information about each item
            );
          },
        ),

        // View All button
        FlatButton(
          child: Text(viewAll ? 'Show Less' : 'View All'),
          onPressed: () {
            setState(() {
              viewAll = !viewAll;
            });
          },
        ),
      ],
    );
  }
}
