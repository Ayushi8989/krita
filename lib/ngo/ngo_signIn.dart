import 'package:flutter/material.dart';

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
              height:MediaQuery.of(context).size.height - 279.0,

              child: Container(
              margin: const EdgeInsets.only(top: 100),
              decoration: const BoxDecoration(
                color: Color.fromARGB(243, 243, 243, 243),

                borderRadius: BorderRadius.vertical(
                    top: Radius.circular(40.0),
                    bottom: Radius.circular(0.0)
                  ),

                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(34, 0, 0, 0),
                    offset: Offset(10, -10),
                    blurRadius: 15,
                    spreadRadius: 6.0,
                  )
                ]
              ),

            ),
            )
            
          ],
        ),
      ),
    );
  }
}
