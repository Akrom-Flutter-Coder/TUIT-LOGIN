import 'dart:io';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:today/Mening_fanlarim.dart';
import 'package:today/button.dart';
import 'package:today/nexr_less.dart';

import 'package:image_picker/image_picker.dart';
class Home_Page extends StatefulWidget {
  Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key


  int col=0;
  List txtx=["Fanlarni tanlash","Mening fanlarim","Dars jadvali",
            "Qayta o'qish","Yakuniy nazorat","Individual shaxsiy reja",
            "Malumotlarim","Rahbariyatga murojat","Sozlamalar"];
  List ikon=[Icons.book,Icons.library_books,Icons.calendar_month,
             Icons.calculate,Icons.question_mark,Icons.design_services,
             Icons.perm_device_information,Icons.add_task,Icons.settings];

             final ImagePicker _picker=ImagePicker();
            var imageFile;
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key, 
       floatingActionButton: FloatingActionButton(
       elevation: 0,
      onPressed: () => _key.currentState!.openDrawer(), 
       child: Icon(Icons.menu),// <-- Opens drawer
    ),// Assign the key to Scaffold.
    drawer: 
       Drawer(
       width: double.infinity,
        backgroundColor: Colors.transparent,
        elevation: 0,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 15,sigmaY: 15),
          child: SafeArea(
            child: Column(
             crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ListTile(
                  leading: Image.asset('assets/images/12.png'),
                  title:  Text('MUHAMMAD AL-XORAZMIY NOMIDAGI TOSHKENT AXBOROT TEXNOLOGIYALARI UNVERSITETI',
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.white.withOpacity(0.8),
                  ),),
                ),
               const Text('______________________________',
                style: TextStyle(
                   
                    color: Colors.white,
                  )
               ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child:   Text('Talaba',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontWeight: FontWeight.w700,
                    fontSize: 17,
                  ),),
              ),
              SizedBox(
                height: 620,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 9,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                         if(index==0) Navigator.push(context,
                              MaterialPageRoute(builder: ((context) {
                            return GeInformation();
                          }
                          )));
                          else if(index==1)
                          Navigator.push(context, MaterialPageRoute(builder: ((context) {
                            return Mening_fanlarim();
                          })));
                        },
                      child: Container(
                        margin:const EdgeInsets.symmetric(vertical:6,horizontal: 50),
                        decoration: BoxDecoration(
                         color: Colors.white.withOpacity(0.1),
                         borderRadius: BorderRadius.circular(19)
          
                        ),
                        child: ListTile(
                          trailing: Icon(Icons.arrow_right_alt,color: Colors.white.withOpacity(0.8),),
                           leading: Icon(ikon[index],color:Colors.white.withOpacity(0.8),size: 33,),
                           title: Text(txtx[index],
                           
                           style: TextStyle(
                            fontSize: 16,
                            color: Colors.white.withOpacity(0.8),
                            fontWeight: FontWeight.w600
                           ),),
                        ),
                      ),
                    );
                  },
                ),
              )
              ],
            ),
          ),
        ),
      ),

      //HOME PAGENING ASOSIY QISMI 
      body: SafeArea(
        child: Container(
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
          child: Column(
            children: [
              Stack(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:15.0,vertical: 65),
                  child: Container(
                    height: 290,
                    width: double.infinity,
                  decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(29),
                   color: Colors.white.withOpacity(0.5)
                   ),
                   child: Padding(
                     padding: const EdgeInsets.only(top: 60,left: 40),
                      child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Ism: Akromjon",style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600
                        ),),
                         Text("Familiya:Abdug'afforov "
                         ,style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600
                        ),),
                        Text("Yo'nalish:Telekomunikatsiya "
                         ,style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600
                        ),),
                          Text('Kursi:2'
                          ,style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600
                        ),),
                           Text("O'quv turi:Davlat grandi"
                           ,style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600
                        ),),
                        Text("Guruhi:414-21"
                           ,style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600
                        ),),
                      ],
                     ),
                   ),
                  )
                ),
               Center(
                child:
                imageFile==null?
                GestureDetector(
                  onTap: ()async {
                    final XFile?image=
                    await _picker.pickImage(source: ImageSource.gallery);
                    setState(() {
                    if(image!=null){
                        imageFile=File(image.path);
                        }
                    }
                    );
                  },
                  child:const CircleAvatar(
                   child: Image(
                  image: AssetImage('assets/images/12.png'),
                  
                  ),
                   radius: 60,),
                ):
                CircleAvatar(
                  backgroundImage: FileImage(imageFile),
                   radius: 60,),
                
                
                ),
             ], ),

              SizedBox(
               height: 350,
               child: ListView.builder(
                 scrollDirection: Axis.horizontal,
                 itemCount: 6,
                 itemBuilder: (context, index) {
                   return Container(
                   margin: EdgeInsets.all(5),
                   width: 190,
                   decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                   color: Colors.white.withOpacity(0.5)
                   ),
                  );
                  },
               ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}