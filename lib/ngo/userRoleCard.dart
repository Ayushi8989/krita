import 'package:flutter/material.dart';

class userRole_Card extends StatefulWidget {
  final String heading;
  final String description;
  bool isClicked;


  userRole_Card({key, required this.heading, required this.description, required this.isClicked}) : super(key: key);

  @override
  State<userRole_Card> createState() => _userRole_CardState();
}

class _userRole_CardState extends State<userRole_Card> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 20.0),
      color: widget.isClicked ? const Color.fromARGB(230, 255, 216, 168) : const Color.fromARGB(255, 240, 239, 239),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        side: BorderSide(
          color: widget.isClicked ? const Color.fromARGB(230, 247, 149, 30) : const Color.fromARGB(255, 240, 239, 239),
          width: 2,
        ),
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.18,
        width: MediaQuery.of(context).size.width * 0.8,
        child: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
        child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.heading,
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    // const SizedBox(height: 3.0,),
                    Text(
                      widget.description,
                      style: const TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 49, 49, 49)),
                    )
                  ],
                ),
        ),
      ),
    );
  }
}