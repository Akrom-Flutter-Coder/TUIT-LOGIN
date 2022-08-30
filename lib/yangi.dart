import 'package:flutter/material.dart';
class Yangi extends StatefulWidget {
  const Yangi({ Key? key }) : super(key: key);

  @override
  State<Yangi> createState() => _YangiState();
}

class _YangiState extends State<Yangi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(19),
            color: Color.fromARGB(255, 68, 72, 95),
          ),
          
          child: ListTile (
           leading: CircleAvatar(child: Icon(Icons.person,size: 30,)),
           title:Text('ITALYANSKIE',style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
           ),) ,
            subtitle:Text('Kamolaxon:800&',style: TextStyle(
              fontSize: 13,
              color: Colors.grey
            ),),
           trailing: Column(
             children: [
              Icon(Icons.one_k_plus,color: Colors.grey,),
               Text('19:00',style: TextStyle(
                color: Colors.grey
               ),),
             ],
           ),

          ),
        ),
      ),
      
    );
  }
}