import 'package:flutter/material.dart';

import 'package:krita/ngo/formInput_Card.dart';
import 'package:krita/ngo/ngo_signIn.dart';
import 'package:krita/ngo/userRole.dart';

const color = Color.fromARGB(230, 247, 149, 30);
const bg_color = Color.fromARGB(255, 255, 255, 255);

class Ngo_SignUpPage extends StatefulWidget {
  const Ngo_SignUpPage({super.key});

  @override
  State<Ngo_SignUpPage> createState() => _Ngo_SignUpPageState();
}

class _Ngo_SignUpPageState extends State<Ngo_SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg_color,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_sharp),
          color: color,
          iconSize: 30,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: const Text(
                'Krita',
                style:
                    TextStyle(
                      fontFamily: 'SAMAN', 
                      color: color, 
                      fontSize: 105
                    ),
              ),
            ),

            //SignUp Container starts here
            SizedBox(
              height: MediaQuery.of(context).size.height - 239,
              child: Container(
                margin: const EdgeInsets.only(top: 35),
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
                  ],
                ),
                child: SingleChildScrollView(
                  padding: const EdgeInsets.fromLTRB(30, 30, 30, 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w500,
                          color: color,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InputCard(
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  hintText: 'Name',
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(
                                    color: Color.fromARGB(127, 117, 117, 117),
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                            InputCard(
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  hintText: 'Email ID',
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(
                                    color: Color.fromARGB(127, 117, 117, 117),
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                            InputCard(
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  hintText: 'Password',
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(
                                    color: Color.fromARGB(127, 117, 117, 117),
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                            InputCard(
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  hintText: 'Confirm Password',
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(
                                    color: Color.fromARGB(127, 117, 117, 117),
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: FloatingActionButton.extended(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const userRole(),
                                ),
                              );
                          },
                          label: const Text(
                            'Sign Up',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          backgroundColor: color,
                        ),
                      ),
                      SizedBox( 
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Already have an account?',
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Ngo_SignInPage(),
                                ),
                              );
                            },
                            child: const Text(
                              'Sign In here',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
