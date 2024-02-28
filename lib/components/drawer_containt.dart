import 'package:amazing_001/setting/globalvariable.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DrawerContaint extends StatefulWidget {
  const DrawerContaint({super.key});

  @override
  State<DrawerContaint> createState() => _DrawerContaintState();
}

class _DrawerContaintState extends State<DrawerContaint> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    // double screenHight = MediaQuery.of(context).size.height;
    ColorProvider colorProvider = Provider.of<ColorProvider>(context);
    return Container(
      width: screenWidth * 0.7,
      color: colorProvider.backgroundlevel1,
    );
  }
}
