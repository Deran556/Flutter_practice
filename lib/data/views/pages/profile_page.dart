import 'package:flutter/material.dart';
import 'package:flutter_application/data/views/pages/welcome_page.dart';
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(20.0),
    child: Column(
      children: [
        CircleAvatar(
          radius: 30.0,
          backgroundImage: AssetImage('assets/images/bg.jpeg'), //using AssetImage insteat of image.asset('path') to load the image in circleAvatar.
        ),
      ListTile(
        title: Text("Logout"),
        onTap: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
            return WelcomePage();
          },),);
        },
      )
    ],),);
  }
}