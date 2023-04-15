import 'package:flutter/material.dart';
import 'package:krita/constants.dart';

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:krita/provider/authentication.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var _bottomNavIndex = 0;
  final iconList = <IconData>[
    Bootstrap.house_door,
    Bootstrap.chat_dots,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_sharp),
          color: main_theme,
          iconSize: 30,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person),
            color: main_theme,
            iconSize: 50,
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.6,
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        color: Color.fromARGB(127, 227, 227, 227),
                      ),
                      // child: Padding(
                      //   padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        // controller: _searchController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search...',
                          // suffixIcon: IconButton(
                          //   onPressed: () {},
                          //   icon: Icon(Icons.clear),
                          // ),
                          prefixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.search),
                          ),
                        ),
                      )),
                  Icon(
                    Bootstrap.sliders,
                    color: main_theme,
                  ),
                ],
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.only(top: 20.0),
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      padding: new EdgeInsets.all(4.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        elevation: 5,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 6.0, horizontal: 12.0),
                                        child: ProfilePicture(
                                          name: ' ',
                                          radius: 20,
                                          fontsize: 21,
                                          random: true,
                                          count: 2,
                                          img:
                                              'https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8&w=1000&q=80',
                                        ),
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        // crossAxisAlignment: CrossAxisAlignment.baseline,
                                        children: [
                                          Text(
                                            'Dhakeshwari',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500,
                                                color: Color.fromARGB(
                                                    255, 35, 35, 35)),
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.verified,
                                                color: Colors.blue,
                                              ),
                                              Text(
                                                'Verified',
                                                style: TextStyle(
                                                  color: Colors.blue,
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 12.0),
                                    child: Column(
                                      children: [
                                        Icon(
                                          Icons.more_horiz,
                                          color: Color.fromARGB(
                                              255, 154, 154, 154),
                                        ),
                                        Text(
                                          '3 min',
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 154, 154, 154),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.1,
                              width: MediaQuery.of(context).size.width * 0.7,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1.0,
                                    color: Color.fromARGB(255, 131, 131, 131)),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 20.0),
                              child: Text(
                                'We have an excess of 50 meals and want to donate them',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(195, 79, 79, 79),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10.0),
                              child: Wrap(
                                direction: Axis.horizontal,
                                alignment: WrapAlignment.start,
                                spacing: 8.0,
                                runSpacing: 10.0,
                                children: [
                                  Container(
                                    height: 30,
                                    // width: 70,
                                    padding: EdgeInsets.all(5.0),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 1.5,
                                        color: Color.fromARGB(255, 242, 84, 84),
                                      ),
                                      color: Color.fromARGB(255, 255, 215, 215),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Text(
                                      'Non-Veg',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 242, 84, 84),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 30,
                                    // width: 45,
                                    padding: EdgeInsets.all(5.0),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 1.5,
                                        color: Color.fromARGB(255, 76, 126, 58),
                                      ),
                                      color: Color.fromARGB(255, 221, 253, 196),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Text(
                                      'Veg',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 76, 126, 58),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 30,
                                    constraints: BoxConstraints(minWidth: 50, maxWidth: 100),                                    padding: EdgeInsets.all(5.0),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 1.5,
                                        color: Color.fromARGB(100, 79, 79, 79),
                                      ),
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(
                                          Bootstrap.bell,
                                          size: 15.0,
                                          color: Colors.amber,
                                        ),
                                        Text(
                                          '50 meals',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color.fromARGB(150, 79, 79, 79),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 30,
                                    constraints: BoxConstraints(minWidth: 30, maxWidth: 60),                                    padding: EdgeInsets.all(5.0),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 1.5,
                                        color: Color.fromARGB(100, 79, 79, 79),
                                      ),
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(
                                          Bootstrap.geo_alt,
                                          size: 15.0,
                                          color: Color.fromARGB(255, 242, 84, 84),
                                        ),
                                        Text(
                                          '2km',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color.fromARGB(150, 79, 79, 79),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 30,
                                    constraints: BoxConstraints(minWidth: 50, maxWidth: 110),                                    padding: EdgeInsets.all(5.0),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 1.5,
                                        color: Color.fromARGB(255, 255, 215, 215),
                                      ),
                                      color: Color.fromARGB(255, 255, 215, 215),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(
                                          Bootstrap.clock,
                                          size: 15.0,
                                          color: Color.fromARGB(255, 242, 84, 84),
                                        ),
                                        Text(
                                          'Exp 20 min',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color.fromARGB(255, 242, 84, 84),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 30,
                                    padding: EdgeInsets.all(5.0),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 1.5,
                                        color: Color.fromARGB(
                                            255, 253, 241, 203),
                                      ),
                                      color: Color.fromARGB(255, 248, 228, 198),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Text(
                                      '3+',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.amber,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Color.fromARGB(225, 255, 255, 255),
          size: 55,
        ),
        backgroundColor: main_theme,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        itemCount: iconList.length,
        tabBuilder: (int index, bool isActive) {
          // final color = isActive ? Colors.activeNavigationBarColor : colors
          //     .notActiveNavigationBarColor;
          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                iconList[index],
                size: 35,
                color: main_theme,
              ),
              const SizedBox(height: 4),
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 8),
              //   child: AutoSizeText(
              //     "brightness $index",
              //     maxLines: 1,
              //     style: TextStyle(color: color),
              //     group: autoSizeGroup,
              //   ),
              // )
            ],
          );
        },
        backgroundColor: Colors.white,
        activeIndex: _bottomNavIndex,
        splashColor: Colors.white,
        // notchAndCornersAnimation: borderRadiusAnimation,
        splashSpeedInMilliseconds: 300,
        notchSmoothness: NotchSmoothness.defaultEdge,
        gapLocation: GapLocation.center,
        onTap: (index) => setState(() => _bottomNavIndex = index),
        // hideAnimationController: _hideBottomBarAnimationController,
        shadow: BoxShadow(
          offset: Offset(0, 1),
          blurRadius: 12,
          spreadRadius: 0.5,
          color: Color.fromARGB(225, 175, 175, 175),
        ),
      ),
    );
  }
}
