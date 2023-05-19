import 'package:assignments/whatsapp_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

void main(){
  runApp(MaterialApp(
    home: Chats(),
  debugShowCheckedModeBanner: false,));
}

class Chats extends StatelessWidget {

  var name = ["Messi","Maradona","Ronaldinho","Ronaldo","Iniesta","De bryune","Puyol","Sahal","xavi","Dejong","Otamendi","Marcherano"];
  var messages = ["buen día","gracias","feliz cumpleaños","How was the last match?","¿Cómo es el nuevo club?","Shit match man!","maldito árbitro, si lo tengo, no volverá a caminar","buen día","gracias","maldito árbitro, si lo tengo, no volverá a caminar","How was the last match?"];
  var photos =["assets/messi.jpg","assets/maradona.jpg","assets/ronaldinho.jpg","assets/ronaldo.jpg","assets/iniesta.jpg","assets/debryune.jpg",
  "assets/puyol.jpg","assets/sahal.jpg","assets/xavi.jpg","assets/dejong.jpg","assets/otamendi.jpg","assets/marcherano.jpg"
  ];
  var time =["2:34","5:45","2:34","1:45","10:23","1:45","12:00","12:34","1:56","4:00","7:12","8:23"];

  

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 5,
     child: Scaffold(
      
      floatingActionButton: FloatingActionButton(onPressed: (){}, 
       backgroundColor: Color(0xff128C7E),),
       appBar: AppBar(backgroundColor: Color(0xff128C7E),
       actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined)),
        IconButton(onPressed: (){}, icon: Icon(Icons.search)),
        
        PopupMenuButton(itemBuilder: (context){
          return [
            PopupMenuItem(child: Text("New Group"),),
            PopupMenuItem(child: Text("New BroadCast"),),
            PopupMenuItem(child: Text("Linked device"),),
            PopupMenuItem(child: Text("Payments"),),
            PopupMenuItem(child: Text("Settings"),),
          ];
        })
       ],
       bottom: TabBar(tabs: [
        Text("Chats"),
         Icon(Icons.camera_alt),
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
            
              itemBuilder: (context,index){
              
              return Center(
                child: ListTile(
                  title:Text(name[index]),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(photos[index]),),
                      subtitle: Text(messages[index]),
                      trailing: Text(time[index]),
                  ),
                );
              
             },
             itemCount: 11,
             ),
           ],
         ),
       ),
     ),
    );
  }
}