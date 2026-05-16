import 'package:flutter/material.dart';
//import 'package:flutter_application/data/views/pages/home_page.dart';
import 'package:flutter_application/data/views/pages/widget_tree.dart';
//import 'package:flutter_application/data/views/widgets/hero_widget.dart';
import 'package:lottie/lottie.dart';

TextEditingController controllerEmail = TextEditingController(text: "123");
TextEditingController controllerPassword = TextEditingController(text: "123");
String confirmedEmail = "123";
String confirmedPassword = "123";

class LoginPage extends StatefulWidget {
  const LoginPage({super.key,
  required this.title, 
  });
  final String title;
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void dispose() {
    controllerEmail.dispose();
    controllerPassword.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size; //to get the size of the screen, we can use it to make the page responsive in different screen sizes, but we will use layout builder instead because it's more efficient and it will only rebuild the widget that needs to be rebuilt when the screen size changes.
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView( //the keyboard appears without error because it's scrollable
          child: Padding(
            padding: const EdgeInsets.all(17.0),
            child: LayoutBuilder(builder:(context, BoxConstraints constraints) {
              return FractionallySizedBox(
              widthFactor: constraints.maxWidth > 500 ? 0.5 : 1.0, //30% of the screen width, it will be responsive in different screen sizes
              child: Column(
                 children: [
                  Lottie.asset('assets/lotties/DotLoading.json', height: 150.0),
                  //HeroWidget(title: widget.title), //we want to use the title from the welcome page, so we need to pass it from the welcome page, and also add it to the constructor
                  //using statefull widget so use widget.title help refresh the page
                  SizedBox(height: 15.0,),
                  TextField(
                      controller:
                          controllerEmail, //dont forget to add controller to textfield
                      decoration: InputDecoration(
                        hintText: "Email",
                        border: (OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ))),
                      onEditingComplete: () => setState(
                        () {},
                      ), //using arrow function when you want execute only one, if you want to also print anything else - use normal function
                    ),
                    SizedBox(height: 20.0,),
                  TextField(
                      controller:
                          controllerPassword, //dont forget to add controller to textfield
                      decoration: InputDecoration(
                        hintText: "Password",
                        border: (OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ))),
                      onEditingComplete: () => setState(
                        () {},
                      ), //using arrow function when you want execute only one, if you want to also print anything else - use normal function
                    ),
                    SizedBox(height: 20.0,),
                    FilledButton(onPressed:() {
                      onLoginPressed();
                    },
                    style: FilledButton.styleFrom(
                      minimumSize: Size(double.infinity, 45.0),
                    ),
                     child: Text(widget.title)),
                     SizedBox(height: 25.0,),
                        
                 ],
              ),
            );
            },),
          ),
        ),
      ),
    );
  }
  void onLoginPressed() {
    if (confirmedEmail == controllerEmail.text && confirmedPassword == controllerPassword.text) {
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) { 
              return WidgetTree();
    },
    ),
    (route) => false, //replace the push -> pushAndRemoveUntil, it will remove the previous page then when you loigned you cannot go back to the welcome page or login page (any page before).
    );
    }
  }
  }