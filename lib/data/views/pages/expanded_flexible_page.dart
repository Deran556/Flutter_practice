import 'package:flutter/material.dart';

class ExpandedFlexiblePage extends StatelessWidget {
  const ExpandedFlexiblePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row( children: [
            Expanded(
            //flex: 4,
            child: Container(
            color: Colors.teal,
            height: 20.0,
            child: Text('Expanded'),
            ),
          ),
          //Flexible is different from Expanded, it wraps the Text, instead of taking all the available space, it only takes the space that it needs
          Flexible(
            // flex: 2,
            child: Container(
            color: Colors.deepPurple,
            height: 20.0,
            child: Text("Flexible"),
            ),
          )
          ],),
          // Expanded(
          //   //flex: 4,
          //   child: Container(
          //   color: Colors.teal,
          //   ),
          // ),
          // Expanded(
          //   // flex: 2,
          //   child: Container(
          //   color: Colors.deepPurple,
          //   ),
          // )
          Divider(),
          Row( children: [
            Flexible(
            // flex: 2,
            child: Container(
            color: Colors.deepPurple,
            height: 20.0,
            child: Text("Flexible"),
            ),
          ),
            Expanded(
            //flex: 4,
            child: Container(
            color: Colors.teal,
            height: 20.0,
            child: Text('Expanded'),
            ),
          ),
          //Flexible is different from Expanded, it wraps the Text, instead of taking all the available space, it only takes the space that it needs
          
          ],),
          
        ],
      ),

      
    );
  }
}