import 'package:flutter/material.dart';
class Rang extends StatefulWidget {
  const Rang({super.key});

  @override
  State<Rang> createState() => _RangState();
}

class _RangState extends State<Rang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(),
      body: Center(
        child: Container(
          child: Text('settings',style: TextStyle(
            fontSize: 25,
            color: Colors.blue,
          ),),

          height: 180,
          width: 180,
          decoration: BoxDecoration(
            color: Colors.indigo[100],
            borderRadius: BorderRadius.circular(29),
            boxShadow:const [
              BoxShadow(
                color: Colors.red,
                blurRadius: 9,
                offset: Offset(5, 5)
              ),
               BoxShadow(
                color: Colors.amber,
                blurRadius: 9,
                offset: Offset(-5, -5)
              )
            ]
          ),
        ),
      ),
    );
  }
}