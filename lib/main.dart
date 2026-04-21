import 'package:flutter/material.dart';
import 'package:flutter_application/data/constants.dart';
import 'package:flutter_application/data/notifiers.dart';
import 'package:flutter_application/data/views/pages/welcome_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
  @override
  void initState() {
    super.initState();
    initThemeMode();
  }

  void initThemeMode() async {
    //get the theme mode from shared preferences
    //if the theme mode is null, set it to light mode
    //if the theme mode is not null, set it to the theme mode that we get from shared preferences
    // Obtain shared preferences.
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    // Try reading data from the 'repeat' key. If it doesn't exist, returns null.
    final bool? repeat = prefs.getBool(Kconstants.themeModeKey);
    isDarkModeNotifier.value = repeat ?? false; //if the repeat is null, set it to false (light mode)
    }
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
