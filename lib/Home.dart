import 'package:flutter/material.dart';
import 'package:today/Home12.dart';
import 'package:today/Muslimbek.dart';
import 'package:today/button.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final name='';
  final username='';
  String  kiritilganUsername='';
  String kiritilganName='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [
           const Padding(
              padding:  EdgeInsets.only(top: 80,left: 50,right: 50,bottom: 20),
              child: Text('MUHAMMAD AL-XORAZMIY NOMIDAGI TOSHKENT AXBOROT TEXNOLOGIYALARI UNVERSITETI',
              style: TextStyle(
                fontSize: 17,
                textBaseline: TextBaseline.ideographic,

              ),),
            ),
            Container(
              height: 120,
              width: 120,
             child: Image.asset('assets/images/1.png',fit: BoxFit.cover,),
            ),
           const Padding(
              padding: const EdgeInsets.only(top: 19,bottom: 19),
              child: Text('LEARNING MANAGEMENT SYSTEM',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600
              ),),
            ),
             Padding(
                padding: EdgeInsets.all(12),
                child: TextFormField(
                    onChanged: ((val) {
                      setState(() {
                        kiritilganUsername = val;
                      });
                    }),
                    keyboardType: TextInputType.emailAddress,
                    style: const TextStyle(color: Colors.black, fontSize: 17),
                    decoration: const InputDecoration(
                        labelText: "Login",
                        
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(9)),
                            borderSide:
                                BorderSide(color: Colors.blue, width: 1)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(9)),
                            borderSide:
                                BorderSide(color: Colors.black, width: 1)
                                )
                                )
                                )
                   ),
                    Padding(
                padding: EdgeInsets.only(top:12,right: 8,left: 8,bottom: 19),
                child: TextFormField(
                    onChanged: ((val) {
                      setState(() {
                        kiritilganUsername = val;
                      });
                    }),
                    keyboardType: TextInputType.emailAddress,
                    style: const TextStyle(color: Colors.black, fontSize: 17),
                    decoration: const InputDecoration(
                        labelText: "Parol",
                        
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(9)),
                            borderSide:
                                BorderSide(color: Colors.blue, width: 1)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(9)),
                            borderSide:
                                BorderSide(color: Colors.black, width: 1)
                                )
                                )
                                )
                   ),
                
                 kiritilganUsername == username && kiritilganName == name
              ?Align(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 19),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: ((context) {
                          return Home_Page();
                        })));
                      },
                      child: Container(
                        height: 40,
                        width: 200,
                       decoration: BoxDecoration(
                         color: Colors.blue[900],
                         borderRadius: BorderRadius.circular(15)
                       ),
                        child: const Center(
                          child: Text('Kirish',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17
                          ),),
                        ),
                      ),
                    ),
                  ),
                ):Padding(
                    padding: const EdgeInsets.only(top: 19),
                    child: Container(
                      height: 40,
                      width: 200,
                     decoration: BoxDecoration(
                       color: Colors.blue[900],
                       borderRadius: BorderRadius.circular(15)
                     ),
                      child: const Center(
                        child: Text('Kirish',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17
                        ),),
                      ),
                    ),
             ),
          ],
        ),
      ),
    );
  }
}