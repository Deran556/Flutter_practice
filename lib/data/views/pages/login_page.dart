import 'package:flutter/material.dart';
//import 'package:flutter_application/data/views/pages/home_page.dart';
import 'package:flutter_application/data/views/pages/widget_tree.dart';
import 'package:flutter_application/data/views/widgets/hero_widget.dart';

TextEditingController controllerEmail = TextEditingController(text: "123");
TextEditingController controllerPassword = TextEditingController(text: "123");
String confirmedEmail = "123";
String confirmedPassword = "123";

class LoginPage extends StatefulWidget {
  const LoginPage({super.key,
  required this.title, //this title because we want to use it in the hero widget, and we want to pass it from the welcome page, so we need to make it required, and also add it to the constructor
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
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView( //the keyboard appears without error because it's scrollable
          child: Padding(
            padding: const EdgeInsets.all(17.0),
            child: Column(
               children: [
                HeroWidget(title: widget.title), //we want to use the title from the welcome page, so we need to pass it from the welcome page, and also add it to the constructor
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
                  ElevatedButton(onPressed:() {
                    onLoginPressed();
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 45.0),
                  ),
                   child: Text(widget.title)),
                   SizedBox(height: 25.0,),
          
               ],
            ),
          ),
        ),
      ),
    );
  }
  void onLoginPressed() {
    if (confirmedEmail == controllerEmail.text && confirmedPassword == controllerPassword.text) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
              return WidgetTree();
    },
    ),
    );
    }
  }
  }