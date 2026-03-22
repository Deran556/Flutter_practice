//Value notifier
//Value listenable builder: listens to the data - no need to setstate()
import 'package:flutter/material.dart';
ValueNotifier<int> selectedPageNotifier = ValueNotifier(0);
ValueNotifier<bool> isDarkModeNotifier = ValueNotifier(true);

