import 'package:flutter/material.dart';
import 'package:flutter_application/data/constants.dart';
import 'package:flutter_application/data/views/widgets/container_widget.dart';
import 'package:flutter_application/data/views/widgets/hero_widget.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(horizontal: 10.0),
    child: SingleChildScrollView(
      child: Column(
        children: [
          HeroWidget(title: "Home"),
          ContainerWidget(title: "Basic Layout", description: "This is the description"),
          ContainerWidget(title: "Basic Layout", description: "This is the description"),
          ContainerWidget(title: "Basic Layout", description: "This is the description"),
          ContainerWidget(title: "Basic Layout", description: "This is the description"),
          ContainerWidget(title: "Basic Layout", description: "This is the description"),

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