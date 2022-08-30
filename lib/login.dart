import 'package:flutter/material.dart';
import 'package:today/button.dart';
import 'nexr_less.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final name='';
  final username='';
  String  kiritilganUsername='';
  String kiritilganName='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Align(
      child: Container(
        margin: EdgeInsets.only(left: 12, top: 10, right: 10),
        height: 400,
        width: 400,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 231, 139, 64),
                        Color.fromARGB(255, 210, 101, 161)  
                ]),
            borderRadius: BorderRadius.all(Radius.circular(15)),
            boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(237, 158, 158, 158),
                  blurRadius: 5,
                  spreadRadius: 2,
                  offset: Offset(5, 5)),
              BoxShadow(
                  color: Color.fromARGB(255, 101, 136, 165),
                  blurRadius: 5,
                  spreadRadius: 2,
                  offset: Offset(-5, -5))
            ]),
        child: Stack(children: [
          Column(children: [
            Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.blueAccent,
                        Color.fromARGB(179, 100, 124, 161)
                      ]),
                  shape: BoxShape.circle),
              margin: const EdgeInsets.only(left: 10),
              child: const Center(
                  child: CircleAvatar(
                backgroundColor: Colors.indigo,
                radius: 45,
                backgroundImage: AssetImage("assets/images/1.png"),
              )),
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
                        labelText: "Name",
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(9)),
                            borderSide:
                                BorderSide(color: Colors.white, width: 1)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(9)),
                            borderSide:
                                BorderSide(color: Colors.black, width: 1))))),
            Padding(
              padding: EdgeInsets.all(12),
              child: TextFormField(
                  onChanged: ((val) {
                    setState(() {
                      kiritilganName = val;
                    });
                  }),
                  keyboardType: TextInputType.visiblePassword,
                  style: const TextStyle(color: Colors.black, fontSize: 17),
                  decoration: const InputDecoration(
                      labelText: "Username",
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(9)),
                          borderSide:
                              BorderSide(color: Colors.white, width: 1)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(9)),
                          borderSide:
                              BorderSide(color: Colors.black, width: 1)))),
            ),
                           ]),
                           
          kiritilganUsername == username && kiritilganName == name
              ? Align(
                  alignment: Alignment.topRight,
                  child: InkWell(
                    onTap: () {
                         Navigator.push(context,
                          MaterialPageRoute(builder: ((context) {
                        return GetInformation();
                      })));
                     },
                     child: const Icon(
                      Icons.login_outlined,
                      color: Colors.black,
                      size: 40,
                    ),
                  ),
                )
              : SizedBox()
        ]),
      ),
    ));
  }
}