import 'package:flutter/material.dart';
class Dars2 extends StatefulWidget {
  Dars2({Key? key}) : super(key: key);

  @override
  State<Dars2> createState() => _Dars2State();
}

class _Dars2State extends State<Dars2> {
  List ism=['Dadajonim','Oyim','Akam',"Ukam","singlim","dost"];
  List vaqt=[
    'Mobil * 57 daqiqa oldin ',
    'Mobil * 23 daqiqa oldin ',
    'Mobil * 20 daqiqa oldin ',
    'Mobil * 17 daqiqa oldin ',
    'Mobil * 9 daqiqa oldin ',
    'Mobil * 2 daqiqa oldin ',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: 6,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
           return Padding(
             padding: const EdgeInsets.all(2.0),
             child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(19),
                color: Color.fromARGB(255, 85, 235, 205)
              ),
             child: ListTile(
          title: Text(ism[index]),
          leading: CircleAvatar(child: Text(ism[index][0])),
            subtitle: Text(vaqt[index]),
            trailing: Icon(Icons.call),
          ),
             ),
           );
          },
        ),
      ),
    );
  }
}