import 'package:flutter/material.dart';
class Muslimbek extends StatefulWidget {
  const Muslimbek({super.key});

  @override
  State<Muslimbek> createState() => _MuslimbekState();
}

class _MuslimbekState extends State<Muslimbek> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: Column(
        children: const [
          ListTile(
          title: Text('Dadajonim'),
          leading: CircleAvatar(child: Text('D')),
            subtitle: Text('Mobil * 57 daqiqa oldin '),
            trailing: Icon(Icons.call),
          ),
          
           ListTile(
          title: Text('Dost'),
          leading: CircleAvatar(child: Text('D')),
            subtitle: Text('Mobil * 42 daqiqa oldin '),
            trailing: Icon(Icons.call),
          ),
        
           ListTile(
          title: Text('Dadajonim'),
          leading: CircleAvatar(child: Text('D')),
            subtitle: Text('Mobil * 57 daqiqa oldin '),
            trailing: Icon(Icons.call),
          ),
           ListTile(
          title: Text('Onajonim'),
          leading: CircleAvatar(child: Text('O')),
            subtitle: Text('Mobil * 5 daqiqa oldin '),
            trailing: Icon(Icons.call),
          ),
           ListTile(
          title: Text('Akam'),
          leading: CircleAvatar(child: Text('A')),
            subtitle: Text('Mobil * 12 daqiqa oldin '),
            trailing: Icon(Icons.call),
          ),
           ListTile(
          title: Text('Buvam'),
          leading: CircleAvatar(child: Text('B')),
            subtitle: Text('Mobil * 34 daqiqa oldin '),
            trailing: Icon(Icons.call),
          ),
           ListTile(
          title: Text('Dost'),
          leading: CircleAvatar(child: Text('D')),
            subtitle: Text('Mobil * 42 daqiqa oldin '),
            trailing: Icon(Icons.call),
          ),
          
           ListTile(
          title: Text('Opoqim'),
          leading: CircleAvatar(child: Text('O')),
            subtitle: Text('Mobil * 24 daqiqa oldin '),
            trailing: Icon(Icons.call),
          ),
        ],
      ),
    );
  }
}