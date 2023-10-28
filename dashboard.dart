import 'package:flutter/material.dart';
import 'package:login/main.dart';
import 'package:login/profil.dart';


class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(25),
        crossAxisCount: 2,
        children: <Widget>[
        Card(
          margin: const EdgeInsets.all(8),
          child: InkWell(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) => profil(),));
            },
            
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const <Widget>[
                  Icon(Icons.person_pin_sharp, size: 50, color: Colors.blue,),
                  Text('Profil', style: TextStyle(fontSize: 20.0),)
                ],
              )),
          ),
        ),
        Card(
          margin: const EdgeInsets.all(8),
          child: InkWell(
            onTap: (){},
            splashColor: Colors.blue,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const <Widget>[
                  Icon(Icons.quiz, size: 50, color: Colors.blue,),
                  Text('Quiz', style: TextStyle(fontSize: 20.0),)
                ],
              )),
          ),
        ),
        Card(
          margin: const EdgeInsets.all(8),
          child: InkWell(
            onTap: (){},
            splashColor: Colors.blue,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const <Widget>[
                  Icon(Icons.menu_book_outlined, size: 50, color: Colors.blue,),
                  Text('Materi', style: TextStyle(fontSize: 20.0),)
                ],
              )),
          ),
        ),
        Card(
          margin: const EdgeInsets.all(8),
          child: InkWell(
            onTap: (){},
            splashColor: Colors.blue,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const <Widget>[
                  Icon(Icons.games_outlined, size: 50, color: Colors.blue,),
                  Text('Game', style: TextStyle(fontSize: 20.0),)
                ],
              )),
          ),
        ),
        Card(
          margin: const EdgeInsets.all(8),
          child: InkWell(
            onTap: (){},
            splashColor: Colors.blue,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const <Widget>[
                  Icon(Icons.video_collection, size: 50, color: Colors.blue,),
                  Text('Streaming', style: TextStyle(fontSize: 20.0),)
                ],
              )),
          ),
        ),
        Card(
          margin: const EdgeInsets.all(8),
          child: InkWell(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) => Halamanutama(),));
            },
            splashColor: Colors.blue,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const <Widget>[
                  Icon(Icons.logout, size: 50, color: Colors.blue,),
                  Text('Logout', style: TextStyle(fontSize: 20.0),)
                ],
              )),
          ),
        ),
        ]
      ),
    );
  }
}