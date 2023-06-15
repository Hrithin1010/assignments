import 'package:flutter/material.dart';

class cardsx extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return  Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: 200,
                  height: 70,
                  child: Center(
                    child: Card(
                      shape: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),
                      shadowColor: Colors.grey,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                      
                          children: [
                            Column(
                              children: [
                                Icon(
                                  Icons.lock_clock_sharp,
                                  size: 20,
                                  color: Colors.green,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top:5.0),
                                  child: Text("30 MINS POLICY"),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Icon(Icons.track_changes,color: Colors.green,),
                                Text("TRACEABILITY"),
                              ],
                            ),
                            Column(
                              children: [
                                Icon(Icons.man_2_outlined,color: Colors.green,),
                                Text("LOCAL SOURCING"),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
    );
             
  }
}