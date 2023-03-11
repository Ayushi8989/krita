import 'package:flutter/material.dart';
import 'SignUp.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:krita/provider/sign_in_provider.dart';
import 'package:provider/provider.dart';
import 'package:krita/constants.dart';

//const color = Color.fromARGB(230, 247, 149, 30);

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  _State createState() => _State();
}

class _State extends State<SignInPage> {
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
                icon: const Icon(Icons.arrow_back_ios_new_rounded),
                color: main_theme,
                iconSize: 30,
                //replace with our own icon data.
              ),
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            backgroundColor: bg_color,
            // resizeToAvoidBottomInset: false,
            body: SingleChildScrollView(
              child: Center(
                  child: Container(
                      // height: MediaQuery.of(context).size.height,
                      constraints: const BoxConstraints(
                        maxHeight: double.infinity,
                      ),
                      child: Column(children: [
                        Container(
                            margin: const EdgeInsets.only(top: 85),
                            child: const Text(
                              'Krita',
                              style: TextStyle(
                                  fontFamily: 'SAMAN',
                                  color: main_theme,
                                  fontSize: 105),
                            )),
                        //sign up container
                        Container(
                            margin: const EdgeInsets.only(top: 160),
                            decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 15,
                                  color: Color.fromARGB(34, 0, 0, 0),
                                  offset: Offset(10, -10),
                                ),
                              ],
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(40),
                                bottom: Radius.circular(0),
                              ),
                            ),
                            child: Container(
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(40),
                                  bottom: Radius.circular(0),
                                ),
                                color: Color.fromARGB(246, 255, 255, 255),
                              ),
                              child: Center(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                        top: 50,
                                      ),
                                      child: const Text('Welcome',
                                          style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.w700,
                                            color: main_theme,
                                          )),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          top: 25,
                                          left: 60,
                                          right: 60,
                                          bottom: 15),
                                      child: ElevatedButton.icon(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                const Color.fromARGB(
                                                    255, 226, 218, 199),
                                            foregroundColor: Colors.black,
                                            minimumSize: const Size(
                                                double.infinity, 50)),
                                        onPressed: () {
                                          final provider =
                                              Provider.of<GoogleSigninProvider>(
                                                  context,
                                                  listen: false);
                                          provider.googleLogin();
                                        },
                                        // icon: Image.network(
                                        //   'http://pngimg.com/uploads/google/google_PNG19635.png',
                                        //   fit: BoxFit.cover,
                                        //   height: 40,
                                        //   width: 40,
                                        // ),
                                        icon: const FaIcon(
                                          FontAwesomeIcons.google,
                                        ),
                                        label: const Text(
                                          ' Sign in with Google',
                                          style: TextStyle(
                                            fontSize: 18,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Text('or',
                                        style: TextStyle(
                                          color: main_theme,
                                          fontWeight: FontWeight.w500,
                                        )),
                                    Container(
                                      height: 45,
                                      width: 350,
                                      margin: const EdgeInsets.only(
                                        top: 15,
                                      ),
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(15),
                                        ),
                                        color:
                                            Color.fromARGB(127, 227, 227, 227),
                                      ),
                                      child: Container(
                                        margin: const EdgeInsets.all(14),
                                        child: const TextField(
                                          decoration: InputDecoration(
                                              labelText: 'User Name',
                                              border: InputBorder.none,
                                              labelStyle: TextStyle(
                                                color: Color.fromARGB(
                                                    127, 117, 117, 117),
                                                fontSize: 14,
                                              )),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 45,
                                      width: 350,
                                      margin: const EdgeInsets.only(
                                        top: 15,
                                      ),
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(15),
                                        ),
                                        color:
                                            Color.fromARGB(127, 227, 227, 227),
                                      ),
                                      child: Container(
                                        margin: const EdgeInsets.all(14),
                                        child: const TextField(
                                          decoration: InputDecoration(
                                              labelText: 'Password',
                                              border: InputBorder.none,
                                              labelStyle: TextStyle(
                                                color: Color.fromARGB(
                                                    127, 117, 117, 117),
                                                fontSize: 14,
                                              )),
                                        ),
                                      ),
                                    ),
                                    Container(
                                        height: 59,
                                        width: 350,
                                        margin: const EdgeInsets.only(
                                          top: 35,
                                        ),
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(50),
                                          ),
                                          color: main_theme,
                                        ),
                                        child: Container(
                                          width: 300,
                                          margin: const EdgeInsets.all(18),
                                          child: FloatingActionButton(
                                            backgroundColor: Colors.transparent,
                                            elevation: 0,
                                            onPressed: () {
                                              // Navigator.push(
                                              //     context,
                                              //     MaterialPageRoute(
                                              //         builder: (context) =>
                                              //             const WelcomePage()));
                                            },
                                            child: const Text(
                                              'Sign In',
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        )),
                                    Container(
                                      margin: const EdgeInsets.only(top: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            child: const Text(
                                              'Don\'t have an account?',
                                            ),
                                          ),
                                          Container(
                                            child: TextButton(
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          const SignUpPage(),
                                                    ));
                                              },
                                              child: const Text(
                                                'Sign Up here',
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ))
                      ]))),
            )));
  }
}
