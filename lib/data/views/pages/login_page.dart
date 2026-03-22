import 'package:flutter/material.dart';
import 'package:flutter_application/data/views/widgets/hero_widget.dart';
TextEditingController controller = TextEditingController();
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
           children: [
            HeroWidget(title: "Login"),
            TextField(
                controller:
                    controller, //dont forget to add controller to textfield
                decoration: InputDecoration(border: (OutlineInputBorder())),
                onEditingComplete: () => setState(
                  () {},
                ), //using arrow function when you want execute only one, if you want to also print anything else - use normal function
              ),

           ],
        ),
      ),
    );
  }
}