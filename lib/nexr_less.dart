import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:today/Home12.dart';
class GeInformation extends StatefulWidget {
  GeInformation({Key? key}) : super(key: key);

  @override
  State<GeInformation> createState() => _GeInformationState();
}

class _GeInformationState extends State<GeInformation> {
  int? selectedIndex;
  int? balandlik;
  
  List pht=[
    "assets/images/1.png",
    "assets/images/5.jpeg",
    "assets/images/3.png",
    "assets/images/4.png"
  ];
bool showButton=false;

  late Future<List<Baza>>futureAlbum;


  Future<List<Baza>>fetchAlbum()async{
final response=await http
.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

if(response.statusCode==200){
  List list=jsonDecode(response.body);
  return list.map((e) => Baza.fromJson(e)).toList(); 
}else{
  throw Exception('Failed to load baza');
}
  }
  @override
  void initState(){
    super.initState();
    futureAlbum=fetchAlbum();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: FutureBuilder<List<Baza>>(
          future: futureAlbum,
          builder: (context, snapshot) {
            if(snapshot.hasData){
             List<Baza> ls=snapshot.data!;
             return ListView.builder(
              itemCount: ls.length,
              itemBuilder:(context, index) {
                 return Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: GestureDetector(
                    onTap: () {
                      setState(() {
                       if( selectedIndex==index)
                      { selectedIndex=null;}
                       else
                        {selectedIndex=index;}
                       
                      });
                    },
                     child: AnimatedContainer(
                      duration: Duration(milliseconds: 400),
                      curve: Curves.easeInOutBack,
                      height: selectedIndex==index?120:90,
                      margin: EdgeInsets.symmetric(horizontal: selectedIndex==index?6:13),
                     decoration: BoxDecoration(
                     gradient:const LinearGradient(colors: [
                       Color.fromARGB(255, 243, 158, 89),
                       Color.fromARGB(255, 212, 119, 170)  
                       ]),
                       borderRadius: BorderRadius.circular(19),
                      ),
                       child: Column(
                         children: [
                           ListTile(
                             title: Text(ls[index].name),
                             subtitle: Text(ls[index].phone),
                             leading: Image.asset(pht[ls[index].id%3]),
                             trailing: Text(ls[index].id.toString()),
                           ),
                           selectedIndex==index?
                           
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, 
                            MaterialPageRoute(builder: ((context) {
                              return Home_Page();

                            })));
                          },
                          child: CircleAvatar(child: Icon(Icons.edit,size: 30,)))
                        :SizedBox()
                         ],
                       ),
                       
                     ),

                   ),
                 );
              },
             );
            }
            else if(snapshot.hasError){
              return Text('${snapshot.error}');
            }
            return const CircularProgressIndicator();
          },
        ),
      ),

    );
  }
}

class Baza{
final int id;
final String name;
final String username;
final String email;
final String phone;
final String website;



Baza({
  required this.id,
  required this.name,
  required this.username,
  required this.email,
  required this.phone,
  required this.website,
  
});
factory Baza.fromJson(Map<String,dynamic>json){
  return Baza(
  id: json["id"], 
  name: json["name"],
  username: json['username'],
  email: json["email"],
  phone: json['phone'],
  website: json['website']

  );
  
}

}

