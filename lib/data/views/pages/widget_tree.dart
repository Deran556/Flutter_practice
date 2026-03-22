import 'package:flutter/material.dart';
import 'package:flutter_application/data/notifiers.dart';
import 'package:flutter_application/data/views/pages/home_page.dart';
import 'package:flutter_application/data/views/pages/profile_page.dart';
import 'package:flutter_application/data/views/pages/settings_page.dart';

import 'package:flutter_application/data/views/widgets/navbar_widget.dart';
//Create a list containing all pages 
List<Widget> pages = [
  HomePage(),
  ProfilePage(),
];
class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Hello World"),
        actions: [
          IconButton(onPressed: () {isDarkModeNotifier.value = !isDarkModeNotifier.value;}, 
          icon: ValueListenableBuilder(valueListenable: isDarkModeNotifier, 
          builder: (context, isDarkMode, child) {
            return Icon(isDarkMode ? Icons.dark_mode : Icons.light_mode
            );
          }
          )
          ),
          IconButton(onPressed:() {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SettingsPage(
                title: "Settings",
              );
            },),
            );//push another page from this button
          }, icon: Icon(Icons.settings))
        ],
        ),
        body: ValueListenableBuilder(valueListenable: selectedPageNotifier, builder: (context, selectedPage, child) {
        return pages.elementAt(selectedPage);
        }
      ), 
      bottomNavigationBar: NavBarWidget(),
       );

  }
} 
