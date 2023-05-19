import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

void main() {
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false, home: List_custom()),
  );
}

class List_custom extends StatelessWidget {
  var image = [
    "https://hips.hearstapps.com/hmg-prod/images/peaky-blinders-1655317442.jpg?crop=0.888888888888889xw:1xh;center,top",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZNG6d0MHRl1kxHeXHrjmylrwdFBcgZYKGqq26zpaJRd8ztFFtZntKNSkGDcxKadau0bk&usqp=CAU",
    "https://ichef.bbci.co.uk/images/ic/400x225_b/p05mpm2h.jpg",
    "https://hips.hearstapps.com/hmg-prod/images/joe-cole-peaky-blinders-reason-for-quitting-show-1646822176.jpeg?crop=0.7xw:1xh;center,top&resize=1200:*",
    "https://medias.spotern.com/spots/w640/233/233489-1569243687.jpg"
  ];
  var name = [
    "THOMMY SHELBY",
    "ARTHUR SHELBY",
    "ADA SHELBY",
    "JOHN SHELBY",
    "POLLY GRAY"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(28),
        child: AppBar(
          title: const Text("PEAKYBLINDERS",
              style:
                  TextStyle(fontWeight: FontWeight.w500, color: Colors.black)),
          titleTextStyle: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          backgroundColor: Colors.white,
        ),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            mainAxisExtent: 200),
        itemBuilder: (context, index) => Card(
          child: Stack(
            children: [
              Container(child: Text("hello"),),
              Container(
                width: double.infinity,
                height: 250,
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      image: NetworkImage(
                        image[index],
                      ),
                      fit: BoxFit.fill),
                ),
              ),
              Positioned(
                  left: 15,
                  right: 50,
                  bottom: 10,
                  
                  child: Text(
                    name[index],
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                  ))
            ],
          ),
        ),
        itemCount: 5,
      ),
    );
  }
}


              

                
            
          
      
    
//         List.generate(
//           4,
//           (index) =>Stack(
//             children: [
//                Container(
//                 width: double.infinity,
//                 height: 150,
//             margin: EdgeInsets.all(4),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(5),
//               image: DecorationImage(
//                   image: NetworkImage(image[index]), fit: BoxFit.fill),
//             ),
//           ),
      
//             ],
//             itemCount
//           )
//         ),
//       ),
//     ));
//   }
// }
