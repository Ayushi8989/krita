import 'package:flutter/material.dart';

class userRole_Card extends StatefulWidget {
    late final Widget child;

  userRole_Card({key, required this.child}) : super(key: key);

  @override
  State<userRole_Card> createState() => _userRole_CardState();
}

class _userRole_CardState extends State<userRole_Card> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 20.0),
      color: Color.fromARGB(255, 240, 239, 239),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.18,
        width: MediaQuery.of(context).size.width * 0.8,
        child: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
        child: widget.child,
        ),
      ),
    );
  }
}