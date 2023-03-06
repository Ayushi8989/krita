import 'package:flutter/material.dart';
import 'package:krita/ngo/formInput_Card.dart';
import 'package:krita/ngo/ngo_signIn.dart';

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

          ],
        ),
      ),
    );
  }
}