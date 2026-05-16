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
            child: AspectRatio(
              aspectRatio: 1920 / 1080 , //to make the image responsive in different screen sizes, we can use aspect ratio to maintain the ratio of the image, so it will not be distorted in different screen sizes.
              //if aspect ratio is 2, it means the width is 2 times the height, so if the width is 200, the height will be 100, if the width is 400, the height will be 200, and so on.
              //if aspect radio is 0.5,  we have two width with the same height.
              child: ClipRRect(
                        //create rounded borders for any widget
                        
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset('assets/images/bg.jpeg', 
                        color: Colors.teal,
                        colorBlendMode: BlendMode.darken,
                        fit: BoxFit.cover ,
                        ),
                        
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