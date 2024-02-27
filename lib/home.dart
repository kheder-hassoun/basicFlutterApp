// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'components/drawer_containt.dart';
import 'setting/globalvariable.dart';
import 'mywidgets/mycard.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    ColorProvider colorProvider = Provider.of<ColorProvider>(context);
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHight = MediaQuery.of(context).size.height;
    return WillPopScope(
        onWillPop: () async {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: AlertDialog(
                  backgroundColor: colorProvider.backgroundlevel3,
                  title: Text(
                    "Close the App ",
                    style: TextStyle(color: colorProvider.textcolor),
                  ),
                  content: Text("Are you sure ?",
                      style: TextStyle(color: colorProvider.themelevel2)),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text("Cancel",
                          style: TextStyle(
                              color: Color.fromARGB(255, 3, 138, 25))),
                    ),
                    TextButton(
                      onPressed: () {
                        SystemNavigator.pop();
                      },
                      child: const Text("Yes",
                          style: TextStyle(
                              color: Color.fromARGB(255, 214, 21, 7))),
                    ),
                  ],
                ),
              );
            },
          );
          return false;
        },
        child: SafeArea(
          top: false,
          child: Scaffold(
              drawer: Drawer(
                width: screenWidth * 0.7,
                child: DrawerContaint(),
              ),
              appBar: AppBar(
                backgroundColor: colorProvider.themelevel1,
                foregroundColor: colorProvider.textcolor,
                elevation: 8,
                shadowColor: colorProvider.backgroundlevel3,
                title: const Text('Home'),
              ),
              body: Container(
                height: screenHight,
                width: screenWidth,
                color: colorProvider.backgroundlevel1,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: screenHight * 0.05,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: SizedBox(
                          height: screenHight * 0.3,
                          width: screenWidth * 0.95,
                          child: Image.asset(
                            "assets/images/home.jpg",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: screenHight * 0.05,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          MyCard(
                              containt: SmallCard(
                            path: "assets/images/home.jpg",
                            text: "dfdsdfd",
                          )),
                          MyCard(
                              containt: SmallCard(
                            path: "assets/images/home.jpg",
                            text: "dfdsdfd",
                          )),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          MyCard(
                              containt: SmallCard(
                            path: "assets/images/home.jpg",
                            text: "dfdsdfd",
                          )),
                          InkWell(
                            onTap: () {
                              Provider.of<ColorProvider>(context, listen: false)
                                  .changecolor();
                            },
                            child: MyCard(
                                containt: SmallCard(
                              path: "assets/images/home.jpg",
                              text: "color",
                            )),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )),
        ));
  }
}
