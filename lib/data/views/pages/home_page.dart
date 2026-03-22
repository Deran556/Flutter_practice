import 'package:flutter/material.dart';
import 'package:flutter_application/data/constants.dart';
import 'package:flutter_application/data/views/widgets/hero_widget.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(10.0),
    child: Column(
      children: [
        HeroWidget(title: "Home"),
        Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 20.0),
        child: Card(
          child: Padding(padding: EdgeInsets.all( 20.0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Basic Layout", style: KTextStyle.titleTealText),
              Text("This is the description", style: KTextStyle.descriptionTealText),
            ],
          ),
          ),
        ),
         ),
      ],
    ),);
  }
}