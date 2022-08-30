import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:today/decoration.dart';
class Mening_fanlarim extends StatefulWidget {
  const Mening_fanlarim({super.key});

  @override
  State<Mening_fanlarim> createState() => _Mening_fanlarimState();
}

class _Mening_fanlarimState extends State<Mening_fanlarim> {
  int? selectedIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Mening fanlarim'),
      ),
      body: Container(
          decoration:const BoxDecoration(
                     gradient: LinearGradient(colors: [
                       Color.fromARGB(255, 29, 93, 177),
                       Colors.white,
                       Color.fromARGB(255, 44, 184, 41) ,
                       Color.fromARGB(255, 29, 93, 177),
                       Colors.white,
                       Color.fromARGB(255, 44, 184, 41),
                       ]),
                      ),
        child: ListView.builder(
          itemCount: 6,
          itemBuilder: (context, index) {
            return GestureDetector(
               onTap: () {
                        setState(() {
                         if( selectedIndex==index)
                        { selectedIndex=null;}
                         else
                          {selectedIndex=index;}
                         
                        });
                      },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: AnimatedContainer(
                  color: Colors.white.withOpacity(0.7),
                   duration: const Duration(milliseconds: 400),
                            curve: Curves.easeInOutBack,
                            height: selectedIndex==index?290:90,
                            margin: EdgeInsets.symmetric(horizontal: selectedIndex==index?6:13),
                           // padding: EdgeInsets.symmetric(vertical: 8),

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: const[
                                   Padding(
                                        padding:  EdgeInsets.all(8.0),
                                        child: Text('Tanlangan fan : '),
                                    ),
                                  ],
                                ),
                              const  Padding(
                                  padding:  EdgeInsets.all(8.0),
                                  child: Text('Vazifalar'),
                                ),
                              ],
                            ),
                ),
              ),
            );
          },

        ),
      ),
    );
  }
}