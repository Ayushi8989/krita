import 'package:flutter/material.dart';
import 'package:krita/provider/sign_in_provider.dart';
import 'package:provider/provider.dart';
import 'SignIn.dart';
import 'package:firebase_core/firebase_core.dart';
import 'dart:async';
import 'ngo/ngo_signin.dart';

const color = Color.fromARGB(230, 247, 149, 30);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => GoogleSigninProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSwatch().copyWith(
              primary: Colors.yellow[700],
              secondary: Colors.yellow.shade700,
            ),
          ),
          home: MyHomePage(),
        ),
      );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const WelcomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: const Center(
        child: Text(
          'Krita',
          style: TextStyle(
            fontFamily: 'SAMAN',
            color: Colors.white,
            fontSize: 105,
          ),
        ),
      ),
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
