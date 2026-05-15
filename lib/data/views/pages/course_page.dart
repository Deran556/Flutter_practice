import 'package:flutter/material.dart';
//import 'package:flutter_application/data/constants.dart';
import 'package:flutter_application/data/views/widgets/hero_widget.dart';
//this is the copy of home page with some changes.
class CoursePage extends StatelessWidget {
  const CoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            HeroWidget(title: 'Course')
          ],
        ),
      ),
    ),
    );
    }
}