import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SliverEx(),
  ));
}

class SliverEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: const Color.fromARGB(255, 7, 34, 56),
            floating: true,
            pinned: true, //scrollable feature
            title: Text("Sliver AppBar"),
            bottom: AppBar(
              backgroundColor: Color.fromARGB(255, 251, 227, 8),
              elevation: 0,
              title: Container(
                width: double.infinity,
                height: 40,
                color: Colors.white,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search here",
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.camera_alt),
                  ),
                  
                ),
              ),
            ),
          ),
          SliverList(
              delegate:
                  SliverChildBuilderDelegate((context, index) => Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                          child: Center(child: Text("Inside sliver list $index",style: TextStyle(color: Colors.white),)),
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromARGB(255, 0, 42, 77)
                          ),
                        ),
                  ),
                      childCount: 20,
                      ))
                      
        ],
      ),
    );
  }
}
