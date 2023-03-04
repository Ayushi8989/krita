import 'package:flutter/material.dart';

class InputCard extends StatefulWidget {
  // const InputCard({super.key});
  final Widget child;

  InputCard({ key, required this.child}) : super(key: key);
  // @override
  State<InputCard> createState() => _InputCardState();
}

class _InputCardState extends State<InputCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 350,
      margin: const EdgeInsets.only(
        top: 20,
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        color: Color.fromARGB(127, 227, 227, 227),
      ),
      child: widget.child,
    );
  }
}
