import 'dart:ui';

import 'package:flutter/material.dart';
class Box extends StatefulWidget {
  const Box({super.key});

  @override
  State<Box> createState() => _BoxState();
}

class _BoxState extends State<Box> {
  int col=0;
  List txt=["Shoes"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Color.fromARGB(255, 120, 124, 101),
       
      ),
      body: Padding(
        padding:const  EdgeInsets.symmetric(horizontal: 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
             Column(
               children: [
                 SizedBox(
                  height: 220,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 31,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(10),
                      height: 190,
                      width: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(29),
                      gradient: const LinearGradient(begin: Alignment.centerLeft,end: Alignment.centerRight,colors: [
                        Color.fromARGB(255, 231, 139, 64),
                        Color.fromARGB(255, 210, 101, 161)  
                      ])
                    ),
                    child: Column(
                      children: [
                        Image.asset('assets/images/1.png',fit: BoxFit.cover,),
                        Text(txt[0],
                        style:const TextStyle(
                          fontSize: 15,
                          color:   Colors.white
                        ) ,)
                      ],
                    ),
                   
                    );
                    },
                   
                  ),
            ),
               ],
             ),
             SizedBox(
              height:470,
             
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(10),
                  height: 180,
                  //width: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(29),
                  gradient: const LinearGradient(begin: Alignment.centerLeft,end: Alignment.centerRight,colors: [
                  Color.fromARGB(255, 243, 158, 89),
                  Color.fromARGB(255, 212, 119, 170)  
                  ])
                ),
               child:ListTile(
                leading: CircleAvatar(
                  child: Image.asset('assets/images/1.png')),
                title: Text('SHOES'),
               )
                );
                },
               
              ),
            )
           
          ],
        ),
        
        
        
        ),
       bottomNavigationBar: Padding(
         padding: const EdgeInsets.all(10.0),
         child: 
         ClipRRect(
            borderRadius: BorderRadius.circular(19),
           child: Container(
            decoration:const BoxDecoration(
               gradient:  LinearGradient(begin: Alignment.centerLeft,end: Alignment.centerRight,colors: [
                    Color.fromARGB(255, 120, 124, 101),
                    Color.fromARGB(255, 65, 106, 101)  
                  ])
            ),
             child: BottomNavigationBar(
              currentIndex: col,
              onTap: (index) {
                setState(() {
                  col=index;
                });
              },
              type: BottomNavigationBarType.fixed,
              unselectedItemColor: Colors.grey,
              fixedColor: Colors.white,
              backgroundColor: Colors.transparent,
             items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
             
              ),
               BottomNavigationBarItem(
                icon: Icon(Icons.note),
                label: 'Curriculumn',
                
              ),
               BottomNavigationBarItem(
                icon: Icon(Icons.group),
                label: 'Group',
              ),
               BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Person',
              ),
              
             ],),
           ),
         ),
       )
    );
  }
}