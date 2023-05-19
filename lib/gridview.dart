import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: GridviewBuilderScreen(),
  ));
}

class GridviewBuilderScreen extends StatelessWidget {
  static String id = 'GridviewBuilder_Screen';
  @override
  Widget build(BuildContext context) {
    List cardContent = [
      [Icons.home, 'Home', Colors.blue],
      [Icons.notification_important, 'Notificatio', Colors.green],
      [Icons.camera_alt_outlined, 'camera', Colors.green],
      [Icons.system_security_update_good_rounded, 'alarm', Colors.blue],
      [Icons.connect_without_contact, 'Flip', Colors.redAccent.shade700],
      [Icons.bookmark_add_rounded, 'dontknow', Colors.yellow],
      [Icons.phone_android, 'Termional', Colors.yellow],
      [Icons.medical_services_sharp, 'Switch', Colors.redAccent.shade700],
      [Icons.location_history, 'Assistant', Colors.brown],
      [Icons.ios_share_rounded, 'Share', Colors.purple],
      [Icons.volume_mute_rounded, 'Select', Colors.purple],
      [Icons.airplanemode_active, 'Install', Colors.brown],
      [Icons.hide_source, 'Hide', Colors.brown],
      [Icons.move_up, 'Move', Colors.green],
      [Icons.keyboard_command_key, 'Keyboard', Colors.grey.shade800],
    ];
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 252, 253, 252),
      appBar: AppBar(
        
        title: Text('Gridview Task'),
        backgroundColor: Color.fromARGB(255, 134, 23, 1),
      ),
      body: GridView.builder(
          padding: const EdgeInsets.all(20.0),
          itemCount: 12,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 2),
          itemBuilder: (context, index) => Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: cardContent[index][2]),
              child: Center(
                child: ListTile(
                  leading: Icon(
                    cardContent[index][0],
                    size: 40,
                  ),
                  title: Text(
                    cardContent[index][1],
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ))),
    );
  }
}