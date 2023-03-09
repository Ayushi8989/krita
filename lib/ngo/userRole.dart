import 'package:flutter/material.dart';
import 'package:krita/ngo/userRoleCard.dart';

const color = Color.fromARGB(230, 247, 149, 30);
const bg_color = Color.fromARGB(255, 255, 255, 255);

class userRole extends StatefulWidget {
  const userRole({super.key});

  @override
  State<userRole> createState() => _userRoleState();
}

class _userRoleState extends State<userRole> {
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
              userRole_Card(
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Organisation Head',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    // const SizedBox(height: 3.0,),
                    Text(
                      'An NGO which consists of more than 100 people.',
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 49, 49, 49)),
                    )
                  ],
                ),
              ),
              userRole_Card(
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Community Head',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    // const SizedBox(height: 3.0,),
                    Text(
                      'A group of people who stepped forward to help the needy.',
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 49, 49, 49)),
                    )
                  ],
                ),
              ),
              userRole_Card(
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Volunteer',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    // const SizedBox(height: 3.0,),
                    Text(
                      'Person who is willing to help the needy at any cost.',
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 49, 49, 49)),
                    )
                  ],
                ),
              ),
              // SizedBox(height: ,),
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.7,
                child: FloatingActionButton.extended(
                  onPressed: () {},
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
