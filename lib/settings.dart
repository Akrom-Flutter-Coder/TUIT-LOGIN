
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:matcher/matcher.dart';
class MMM extends StatefulWidget {
  const MMM({super.key});

  @override
  State<MMM> createState() => _MMMState();
}

class _MMMState extends State<MMM> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 190,
                width: 190,
                child: Center(
                  child: Text('Muslimbek',style: TextStyle(
                    fontSize: 30,
                    color: Colors.green,
                  ),),
                ),
                decoration: BoxDecoration(
                  color: Colors.indigo[100],
                  borderRadius:BorderRadius.circular(30),
                  boxShadow: const[
                   BoxShadow(
                    color: Colors.grey,
                    blurRadius: 9,
                    offset: Offset(5, 5)
                   ) ,
                   BoxShadow(
                    color: Colors.red,
                    blurRadius: 9,
                    offset: Offset(-5, -5)
                   )
                  ]

                ),
                ),
            ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
              height: 190,
              width: 190,
              child: Center(
                  child: Text('Muslimbek',style: TextStyle(
                    fontSize: 30,
                    color: Colors.green,
                  ),),
              ),
              decoration: BoxDecoration(
                  color: Colors.indigo[100],
                  borderRadius:BorderRadius.circular(30),
                  boxShadow: const[
                   BoxShadow(
                    color: Colors.grey,
                    blurRadius: 9,
                    offset: Offset(5, 5)
                   ) ,
                   BoxShadow(
                    color: Colors.red,
                    blurRadius: 9,
                    offset: Offset(-5, -5)
                   )
                  ]

              ),
              ),
               ),
          ],
        ),
        ),
      );
      
    
   
  }
}