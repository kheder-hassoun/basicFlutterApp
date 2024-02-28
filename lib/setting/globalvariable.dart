import 'package:flutter/material.dart';

class ColorProvider with ChangeNotifier {
  Color backgroundlevel1 = const Color.fromARGB(255, 243, 243, 243);
  Color backgroundlevel2 = const Color.fromARGB(255, 230, 228, 228);
  Color backgroundlevel3 = const Color.fromARGB(255, 150, 150, 150);
  Color themelevel1 = const Color.fromARGB(255, 243, 2, 243);
  Color themelevel2 = const Color.fromARGB(255, 102, 2, 102);
  Color textcolor = const Color.fromARGB(255, 0, 0, 0);

  void changetheme() {
    if (backgroundlevel1 == const Color.fromARGB(255, 243, 243, 243)) {
      backgroundlevel1 = const Color.fromARGB(255, 10, 10, 10);
      backgroundlevel2 = const Color.fromARGB(255, 41, 41, 41);
      backgroundlevel3 = const Color.fromARGB(255, 109, 109, 109);
      textcolor = Color.fromARGB(255, 15, 15, 15);
    } else {
      backgroundlevel1 = const Color.fromARGB(255, 243, 243, 243);
      backgroundlevel2 = const Color.fromARGB(255, 230, 228, 228);
      backgroundlevel3 = const Color.fromARGB(255, 150, 150, 150);
      textcolor = const Color.fromARGB(255, 41, 41, 41);
    }

    notifyListeners();
  }
}
