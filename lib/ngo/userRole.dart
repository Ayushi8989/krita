import 'package:flutter/material.dart';

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

      body: Column(),
    );
  }
}