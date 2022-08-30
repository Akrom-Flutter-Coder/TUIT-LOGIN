import 'package:flutter/material.dart';
class Dec extends StatefulWidget {
  const Dec({super.key});

  @override
  State<Dec> createState() => _DecState();
}

class _DecState extends State<Dec> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
                     gradient:const LinearGradient(colors: [
                       Color.fromARGB(255, 29, 93, 177),
                       Colors.white,
                       Color.fromARGB(255, 44, 184, 41) ,
                       Color.fromARGB(255, 29, 93, 177),
                       Colors.white,
                       Color.fromARGB(255, 44, 184, 41),
                       ]),
                       borderRadius: BorderRadius.circular(19),
                      ),
    );
  }
}