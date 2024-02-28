// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'components/drawer_containt.dart';
import 'setting/globalvariable.dart';
import 'mywidgets/mycard.dart';
import 'package:provider/provider.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';

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
              drawer: DrawerContaint(),
              appBar: AppBar(
                backgroundColor: colorProvider.themelevel1,
                foregroundColor: colorProvider.textcolor,
                elevation: 8,
                shadowColor: colorProvider.backgroundlevel3,
                title: const Text('Home'),
              ),
              bottomNavigationBar: CurvedNavigationBar(
                  color: colorProvider.themelevel1,
                  buttonBackgroundColor: colorProvider.themelevel1,
                  backgroundColor: colorProvider.backgroundlevel1,
                  height: 65,
                  items: const [
                    CurvedNavigationBarItem(
                      child: Icon(Icons.home_outlined),
                      label: 'Home',
                    ),
                    CurvedNavigationBarItem(
                      child: Icon(Icons.favorite),
                      label: 'Love',
                    ),
                    CurvedNavigationBarItem(
                      child: Icon(Icons.person_2_outlined),
                      label: 'About',
                    ),
                  ]),
              body: Container(
                height: screenHight,
                width: screenWidth,
                color: colorProvider.backgroundlevel1,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: screenHight * 0.02,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: SizedBox(
                          height: screenHight * 0.25,
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
                            path: "assets/images/hadeel.jpg",
                            text: "hadeel💞",
                          )),
                          MyCard(
                              containt: SmallCard(
                            path: "assets/images/birthday.jpg",
                            text: "birthday love",
                          )),
                        ],
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
                            path: "assets/images/developer.jpg",
                            text: "About",
                          )),
                          InkWell(
                            onTap: () {
                              Provider.of<ColorProvider>(context, listen: false)
                                  .changetheme();
                            },
                            child: MyCard(
                                containt: SmallCard(
                              path: "assets/images/setting.jpg",
                              text: "Setting",
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
