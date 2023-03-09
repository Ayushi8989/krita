import 'package:flutter/material.dart';

import 'ngo_signIn.dart';

const color = Color.fromARGB(230, 247, 149, 30);
const bg_color = Color.fromARGB(255, 255, 255, 255);

class userRole extends StatefulWidget {
  const userRole({super.key});

  @override
  State<userRole> createState() => _userRoleState();
}

class _userRoleState extends State<userRole> {

  int count =0;
  
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                          left:
                              MediaQuery.of(context).size.shortestSide * 0.1)),
                  const Text(
                    'Choose your',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  const Text(
                    'Role.',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700,
                      color: color,
                    ),
                  ),
                ],
              ),

              
              // SizedBox(height: ,),
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.7,
                child: FloatingActionButton.extended(
                  onPressed: () {
                    if (count!=0)
                     Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Ngo_SignInPage()));
                  },
                  label: const Text(
                    'Next',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  backgroundColor: color,
                ),
              ),
            ]
          ),
      ),
    );
  }
}
