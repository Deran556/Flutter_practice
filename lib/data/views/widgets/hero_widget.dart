import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key, 
  required this.title, 
  this.nextPage,
  
  });

  final String title;
  final Widget? nextPage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: nextPage != null ? () {
        // Handle tap event
        Navigator.push(context, MaterialPageRoute(builder: (context) { 
                  return nextPage!;
                }));
      } : null,

      child: Stack(
        alignment: Alignment.center,
        children: [
          Hero(
            tag: "hero1",
            child: ClipRRect(
                      //create rounded borders for any widget
                      
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset('assets/images/bg.jpeg', 
                      color: Colors.teal,
                      colorBlendMode: BlendMode.darken
                      
                      ),
                      
                    ),
          ),
          Text(title, style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40.0,
            letterSpacing: 20.0,
            color: Colors.white60
          ),),
        ],
      ),
    );
  }
}