import 'package:flutter/material.dart';

class ColorProvider with ChangeNotifier {
  Color backgroundlevel1 = const Color.fromARGB(255, 243, 243, 243);
  Color backgroundlevel2 = const Color.fromARGB(255, 230, 228, 228);
  Color backgroundlevel3 = const Color.fromARGB(255, 150, 150, 150);
  Color themelevel1 = const Color.fromARGB(255, 243, 2, 243);
  Color themelevel2 = const Color.fromARGB(255, 102, 2, 102);
  Color textcolor = const Color.fromARGB(255, 0, 0, 0);

  void changecolor() {
    backgroundlevel1 = const Color.fromARGB(255, 31, 31, 31);
    backgroundlevel2 = const Color.fromARGB(255, 61, 61, 61);
    backgroundlevel3 = const Color.fromARGB(255, 109, 109, 109);

    // Notify listeners to update the UI with the new colors
    notifyListeners();
  }
}
