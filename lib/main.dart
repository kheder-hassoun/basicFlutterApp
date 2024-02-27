import 'package:amazing_001/home.dart';
import 'package:amazing_001/setting/globalvariable.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// short cuts
// ctr + shift + r  all option when select something

//flutter build appbundle --target-platform android-arm,android-arm64
void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ColorProvider(),
      child: const App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
