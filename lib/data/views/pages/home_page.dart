import 'package:flutter/material.dart';
import 'package:flutter_application/data/constants.dart';
import 'package:flutter_application/data/views/pages/course_page.dart';
//import 'package:flutter_application/data/views/pages/onboarding_page.dart';
//import 'package:flutter_application/data/constants.dart';
import 'package:flutter_application/data/views/widgets/container_widget.dart';
import 'package:flutter_application/data/views/widgets/hero_widget.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> list = [
      KValue.basicLayout,
      KValue.cleanUi,
      KValue.fixBugs,
      KValue.keyConcepts
    ];
    return Padding(padding: EdgeInsets.symmetric(horizontal: 10.0),
    child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 10.0,),
          HeroWidget(title: "Home", 
          nextPage: CoursePage(),), //Title in the video is "Flutter Mapp"
          SizedBox(height: 10.0,),
          ...List.generate(list.length, (index) { //... telling flutter I want to add many widgets inside
            return ContainerWidget(title: list.elementAt(index), description: "This is a description");
          })
          // ContainerWidget(title: "Basic Layout", description: "This is the description"),
          // ContainerWidget(title: "Basic Layout", description: "This is the description"),
          // ContainerWidget(title: "Basic Layout", description: "This is the description"),
          // ContainerWidget(title: "Basic Layout", description: "This is the description"),
          // ContainerWidget(title: "Basic Layout", description: "This is the description"),

          // Container(
          // width: double.infinity,
          // padding: EdgeInsets.symmetric(vertical: 20.0),
          // child: Card(
          //   child: Padding(padding: EdgeInsets.all( 20.0),
          //   child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Text("Basic Layout", style: KTextStyle.titleTealText),
          //       Text("This is the description", style: KTextStyle.descriptionTealText),
          //     ],
          //   ),
          //   ),
          // ),
          //  ),
        ],
      ),
    ),);
  }
}