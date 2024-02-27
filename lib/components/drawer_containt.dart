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
    ColorProvider colorProvider = Provider.of<ColorProvider>(context);
    return Container(
      color: colorProvider.backgroundlevel1,
    );
  }
}
