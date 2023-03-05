import 'package:flutter/material.dart';

import 'package:krita/ngo/formInput_Card.dart';
import 'package:krita/ngo/ngo_signup.dart';

const color = Color.fromARGB(230, 247, 149, 30);

class Ngo_SignInPage extends StatefulWidget {
  const Ngo_SignInPage({super.key});

  @override
  State<Ngo_SignInPage> createState() => _Ngo_SignInPageState();
}

class _Ngo_SignInPageState extends State<Ngo_SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 70),
              child: const Text(
                'Krita',
                style:
                    TextStyle(fontFamily: 'SAMAN', color: color, fontSize: 105),
              ),
            ),

            //SignUp Container starts here
            SizedBox(
              height: MediaQuery.of(context).size.height - 279.0,
              child: Container(
                margin: const EdgeInsets.only(top: 100),
                decoration: const BoxDecoration(
                    color: Color.fromARGB(243, 243, 243, 243),
                    borderRadius: BorderRadius.vertical(
                        top: Radius.circular(40.0),
                        bottom: Radius.circular(0.0)),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(34, 0, 0, 0),
                        offset: Offset(10, -10),
                        blurRadius: 15,
                        spreadRadius: 6.0,
                      )
                    ]),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Sign In',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w500,
                          color: color,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InputCard(
                            child: Container(
                              margin: const EdgeInsets.all(14),
                              child: const TextField(
                                decoration: InputDecoration(
                                    labelText: 'User Name',
                                    border: InputBorder.none,
                                    labelStyle: TextStyle(
                                      color: Color.fromARGB(127, 117, 117, 117),
                                      fontSize: 14,
                                    )),
                              ),
                            ),
                          ),
                          InputCard(
                            child: Container(
                              margin: const EdgeInsets.all(14),
                              child: const TextField(
                                decoration: InputDecoration(
                                    labelText: 'Password',
                                    border: InputBorder.none,
                                    labelStyle: TextStyle(
                                      color: Color.fromARGB(127, 117, 117, 117),
                                      fontSize: 14,
                                    )),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 59,
                        width: 350,
                        child: FloatingActionButton.extended(
                          onPressed: () {},
                          label: const Text(
                            'Sign In',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          backgroundColor: color,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Don\'t have an account?',
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Ngo_SignUpPage(),
                                ),
                              );
                            },
                            child: const Text(
                              'Sign Up here',
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
