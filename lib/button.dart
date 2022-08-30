import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class GetInformation extends StatefulWidget {
  GetInformation({Key? key}) : super(key: key);

  @override
  State<GetInformation> createState() => _GetInformationState();
}

class _GetInformationState extends State<GetInformation> {
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
.get(Uri.parse('https://jsonplaceholder.typicode.com/comments'));

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
                 return Container(
                   child: ListTile(
                     title: Text(ls[index].name),
                     subtitle: Text(ls[index].email),
                     leading: Image.asset(pht[ls[index].id%3]),
                     trailing: Text(ls[index].id.toString()),
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
final int postId;
final int id;
final String name;
final String email;

Baza({
  required this.postId,
  required this.id,
  required this.name,
  required this.email
});
factory Baza.fromJson(Map<String,dynamic>json){
  return Baza(
  postId: json["postId"], 
  id: json["id"], 
  name: json["name"],
  email: json["email"]);
}

}



 