import 'package:flutter/material.dart';
import 'SignIn.dart';

import 'ngo/ngo_signin.dart';

const color = Color.fromARGB(230, 247, 149, 30);

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.yellow[700],
          secondary: Colors.yellow.shade700,
        ),
      ),
      home: const WelcomePage(),
    );
  }
}

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Krita',
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.menu_rounded),
            color: color,
            iconSize: 30,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Center(
          child: SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: const Text(
                    'Krita',
                    style: TextStyle(
                        fontFamily: 'SAMAN', color: color, fontSize: 105),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 55),
                  child: const Text(
                    'Want To Share Food?',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 25),
                  child: const Text(
                    'Choose anyone',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 128, 124, 124),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 40),
                  child: Column(
                    children: [
                      SizedBox(
                          child: Row(
                        children: <Widget>[
                          Expanded(
                            child: SizedBox(
                              height: 100.0,
                              width: 100.0,
                              child: FloatingActionButton(
                                heroTag: "btn1",
                                backgroundColor: color,
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const SignInPage()));
                                },
                                // child: ImageIcon(
                                //   AssetImage("images/image1.png"),
                                // ),
                                child: const Icon(Icons.fastfood, size: 40),
                              ),
                            ),
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 100.0,
                              width: 100.0,
                              child: FloatingActionButton(
                                heroTag: "btn2",
                                backgroundColor: color,
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Ngo_SignInPage()));
                                },
                                child: const Icon(Icons.face, size: 40),
                              ),
                            ),
                          ),
                        ],
                      )),
                      Container(
                          margin: const EdgeInsets.only(top: 14),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                              SizedBox(
                                child: Text(
                                  'Donate',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              SizedBox(
                                child: Text('NGOs',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    )),
                              )
                            ],
                          )),
                    ],
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 14),
                    child: const Text(
                      'Donate your food for the needy',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 128, 124, 124),
                      ),
                    )),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Material(
          child: Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 86),
                width: double.infinity,
                height: 50,
                color: color,
                child: const Text('...',
                    style: TextStyle(
                      color: Colors.white,
                    )),
              ),
              Container(
                alignment: Alignment.center,
                height: 100,
                //placeholder illustration
                child: Image.asset('assets/images/illustration.png'),
              )
            ],
          ),
        ),
      ),
    );
  }
}