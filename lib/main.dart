import 'package:flutter/material.dart';
import 'package:flutter_application/data/notifiers.dart';
import 'package:flutter_application/data/views/pages/welcome_page.dart';
//import 'package:flutter_application/data/views/pages/widget_tree.dart';//sateful can refresh
//stateless cannot refresh
//setstate to refresh

void main() {
  runApp(const MyApp());
}

//Recap/minimap: MaterialApp, Scaffold, AppTile, BottomNavigationBar.
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: isDarkModeNotifier, builder: (context, isDarkMode, child) {
      return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: isDarkMode ? Brightness.dark : Brightness.light,
        ),
      ),
      home: WelcomePage()
    );
    }
    );
  }
}
