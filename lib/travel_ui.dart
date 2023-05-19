import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: imagegrid1(),
  ));
}

class imagegrid1 extends StatelessWidget {
  var image = [
    "https://getwallpapers.com/wallpaper/full/1/5/3/1098898-vertical-peaky-blinders-wallpapers-1920x1080-for-retina.jpg",
    "https://getwallpapers.com/wallpaper/full/1/1/2/1098835-download-free-peaky-blinders-wallpapers-2197x1463.jpg",
    "https://images8.alphacoders.com/118/thumbbig-1181584.webp",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDgT6QQtL_XEw_Pbw40YjAChU-Z4xUYhOuJg&usqp=CAU"
  ];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(28),
        child: AppBar(
          
          title: const Text("PEAKYBLINDERS",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
          titleTextStyle: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          backgroundColor: Colors.black,
        ),
      ),
      body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              childAspectRatio: 7,
              mainAxisExtent: 180),
          children: List.generate(
            4,
            (index) => Container(
              margin: EdgeInsets.all(05),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
                image: DecorationImage(
                    image: NetworkImage(
                      image[index],
                    ),
                    fit: BoxFit.cover),
              ),
            ),
          )),
    );
  }
}