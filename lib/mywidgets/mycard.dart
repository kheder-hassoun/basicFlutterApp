import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../setting/globalvariable.dart';

class MyCard extends StatefulWidget {
  const MyCard({super.key, required this.containt});
  final Widget containt;
  @override
  // ignore: no_logic_in_create_state
  State<MyCard> createState() => _MyCardState(containt: containt);
}

class _MyCardState extends State<MyCard> {
  _MyCardState({
    required this.containt,
  }) : super();
  late final Widget containt;
  @override
  Widget build(BuildContext context) {
    ColorProvider colorProvider = Provider.of<ColorProvider>(context);
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHight = MediaQuery.of(context).size.height;

    return Card(
        color: colorProvider.backgroundlevel2,
        shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            side: BorderSide(color: colorProvider.themelevel1, width: 0.01)),
        child: Container(
            width: screenWidth * 0.4,
            height: screenHight * 0.2,
            padding: const EdgeInsets.all(3),
            child: containt));
  }
}

class SmallCard extends StatelessWidget {
  const SmallCard({super.key, required this.path, required this.text});
  final String path;
  final String text;
  @override
  Widget build(BuildContext context) {
    ColorProvider colorProvider = Provider.of<ColorProvider>(context);
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHight = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: SizedBox(
            width: screenWidth * 0.39,
            height: screenHight * 0.15,
            child: Image.asset(
              path,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Text(
          text,
          style: TextStyle(fontSize: 17, color: colorProvider.textcolor),
        ),
      ],
    );
  }
}
