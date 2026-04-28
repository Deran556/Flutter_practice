import 'package:flutter/material.dart';
import 'package:flutter_application/data/constants.dart';
import 'package:flutter_application/data/views/pages/login_page.dart';
//import 'package:flutter_application/data/views/pages/home_page.dart';
//import 'package:flutter_application/data/views/pages/widget_tree.dart';
//import 'package:flutter_application/data/views/widgets/hero_widget.dart';
import 'package:lottie/lottie.dart';

TextEditingController controllerEmail = TextEditingController(text: "123");
TextEditingController controllerPassword = TextEditingController(text: "123");
String confirmedEmail = "123";
String confirmedPassword = "123";

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView( //the keyboard appears without error because it's scrollable
          child: Padding(
            padding: const EdgeInsets.all(17.0),
            child: Column(
               children: [
                Lottie.asset('assets/lotties/Shapes.json', height: 150.0),
                //HeroWidget(title: widget.title), //we want to use the title from the welcome page, so we need to pass it from the welcome page, and also add it to the constructor
                //using statefull widget so use widget.title help refresh the page
                //SizedBox(height: 15.0,),
                  Text('Flutter Map is an way to learn Flutter, period.',
                  style: KTextStyle.descriptionTealText, 
                  textAlign: TextAlign.justify,),
                  SizedBox(height: 20.0,),
                  FilledButton(onPressed:() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) { 
                  return LoginPage(title: "Register",);
                },),
                );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 45.0),
                  ),
                   child: Text('Next')),
                   SizedBox(height: 25.0,),
          
               ],
            ),
          ),
        ),
      ),
    );
  }
  }