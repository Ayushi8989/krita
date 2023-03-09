import 'package:flutter/material.dart';
import 'SignIn.dart';

const color = Color.fromARGB(230, 247, 149, 30);

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  _State createState() => _State();
}

class _State extends State<SignUpPage> {
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
                color: color,
                iconSize: 30,
                //replace with our own icon data.
              ),
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            backgroundColor: Colors.white,
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
                                  color: color,
                                  fontSize: 105),
                            )),
                        //sign up container
                        Container(
                            margin: const EdgeInsets.only(top: 70),
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
                                      child: const Text('Sign Up',
                                          style: TextStyle(
                                            fontSize: 28,
                                            fontWeight: FontWeight.w500,
                                            color: color,
                                          )),
                                    ),
                                    Container(
                                      height: 45,
                                      width: 350,
                                      margin: const EdgeInsets.only(
                                        top: 50,
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
                                              labelText: 'Email ID',
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
                                        height: 45,
                                        width: 350,
                                        margin: const EdgeInsets.only(
                                          top: 15,
                                        ),
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(15),
                                          ),
                                          color: Color.fromARGB(
                                              127, 227, 227, 227),
                                        ),
                                        child: Container(
                                          margin: const EdgeInsets.all(14),
                                          child: const TextField(
                                            decoration: InputDecoration(
                                                labelText: 'Confirm Password',
                                                border: InputBorder.none,
                                                labelStyle: TextStyle(
                                                  color: Color.fromARGB(
                                                      127, 117, 117, 117),
                                                  fontSize: 14,
                                                )),
                                          ),
                                        )),
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
                                          color: color,
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
                                              'Sign Up',
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
                                              'Already have an account?',
                                            ),
                                          ),
                                          Container(
                                            child: TextButton(
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          const SignInPage(),
                                                    ));
                                              },
                                              child: const Text(
                                                'Sign in',
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
