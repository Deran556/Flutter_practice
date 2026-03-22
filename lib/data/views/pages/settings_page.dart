import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key, required this.title});
  @override
  State<SettingsPage> createState() => _SettingsPageState();
  final String title;
}

class _SettingsPageState extends State<SettingsPage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  bool isSwiched = false;
  double sliderValue = 0.0;
  String? menuItem = "e1";
  @override
  Widget build(BuildContext context) {
    // return Center(
    //   child: Text("Profile Page"),
    // );
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
        ), //if you use stateless widget just use 'title' without 'widget'
        // leading: BackButton(onPressed: () {
        //   Navigator.pop(context);
        // },
        // ), //delete the back button after change push to pushReplacement, used in login page
        //automaticallyImplyLeading: false,
      ),
      //remove the back button from the appbar
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      duration: Duration(seconds: 3),
                      behavior: SnackBarBehavior.floating,
                      content: Text("Hello World")));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal[600],
                  foregroundColor: Colors.white,
                ),
                child: Text("Snack Bar"),
              ),
              Divider(
                color: Colors.teal,
                thickness: 2.0,
                endIndent: 190.0,
              ),
              // Container(
              //   height: 50.0,
              //   child: VerticalDivider(),
              // ), //Vertical: duong thang
              ElevatedButton(
                onPressed: () {
                  showDialog(context: context, builder: (context) {
                    return AlertDialog(
                      title: Text("Alert Title"),
                      content: Text("Alert Content"),
                      actions: [
                        FilledButton(onPressed:() {
                          Navigator.pop(context);
                        }, child: Text("Close"))
                      ],
                    ); //AboutDialog(); using AleartDialog for more customisation
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal[600],
                  foregroundColor: Colors.white,
                ),
                child: Text("Open Dialog"),
              ),
              DropdownButton(
                value: menuItem,
                items: [
                  DropdownMenuItem(value: "e1", child: Text("Item 1")),
                  DropdownMenuItem(value: "e2", child: Text("Item 2")),
                  DropdownMenuItem(value: "e3", child: Text("Item 3")),
                ],
                onChanged: (String? value) {
                  setState(() {
                    menuItem = value;
                  });
                },
              ),
              TextField(
                controller:
                    controller, //dont forget to add controller to textfield
                decoration: InputDecoration(border: (OutlineInputBorder())),
                onEditingComplete: () => setState(
                  () {},
                ), //using arrow function when you want execute only one, if you want to also print anything else - use normal function
              ),
              Text(controller.text),
              Checkbox.adaptive(
                tristate: true,
                value: isChecked,
                onChanged: (bool? value) {
                  //using .adaptive then the checkbox will fit the style of the device
                  setState(() {
                    isChecked = value;
                  });
                },
              ),
              CheckboxListTile(
                tristate: true,
                title: Text("Click me"),
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value;
                  });
                },
              ),
              Switch.adaptive(
                value: isSwiched,
                onChanged: (bool value) {
                  //adaptive switch will change its design according to the platform IOS or Android
                  setState(() {
                    isSwiched = value;
                  });
                },
              ),
              SwitchListTile(
                title: Text("Switch me"),
                value: isSwiched,
                onChanged: (bool value) {
                  setState(() {
                    isSwiched = value;
                  });
                },
              ),
              Slider.adaptive(
                max: 100,
                value: sliderValue,
                divisions: 5,
                onChanged: (double value) {
                  setState(() {
                    sliderValue = value;
                  });
                  debugPrint(value.toString());
                },
              ),
              InkWell(
                splashColor: Colors.teal[900],
                onTap: () {
                  debugPrint("image selected");
                },
                child: Container(
                  height: 50.0,
                  width: double.infinity,
                  color: Colors
                      .white12, //the color 'white12' is different from 'white' because it is more transparent, you can also use 'withOpacity' to make any color more transparent
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal[600],
                  foregroundColor: Colors.white,
                ),
                child: Text("Click me"),
              ),

              ElevatedButton(onPressed: () {}, child: Text("Click me")),
              FilledButton(onPressed: () {}, child: Text("Click me")),
              OutlinedButton(onPressed: () {}, child: Text("Click me")),
              TextButton(onPressed: () {}, child: Text("Click me")),
              CloseButton(),
              BackButton(),
            ],
          ),
        ),
      ),
    );
  }
}
