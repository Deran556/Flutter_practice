import 'package:flutter/material.dart';
import 'package:flutter_application/data/views/pages/login_page.dart';
// import 'package:flutter_application/data/views/pages/widget_tree.dart';
// import 'package:flutter_application/data/views/widgets/hero_widget.dart';
import 'package:lottie/lottie.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center ,
          children: [
            Lottie.asset('assets/lotties/SandyLoading.json'),
            FittedBox(
              child: Text("Flutter Map", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0, 
                letterSpacing: 10.0,
              ),),
            ),
            SizedBox(height: 20.0,),
            FilledButton(onPressed:() {
               Navigator.push(context, MaterialPageRoute(builder: (context) {
              return LoginPage();
            },
            ),
            );
            }, 
            style: FilledButton.styleFrom(
              minimumSize: Size(double.infinity, 40.0),
            ),
            child: Text("Get Started")),
            TextButton(onPressed:() {
               Navigator.push(context, MaterialPageRoute(builder: (context) {
              return LoginPage();
            },),
            );
            }, 
            style: FilledButton.styleFrom(
              minimumSize: Size(double.infinity, 40.0),
            ),child: Text("Login"))   
          ],
        ),
      )  
    );
  }
}