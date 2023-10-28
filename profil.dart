import 'package:flutter/material.dart';

class profil extends StatefulWidget {
  const profil({super.key});

  @override
  State<profil> createState() => _profilState();
}

class _profilState extends State<profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('profil'),
      ),
      body: SafeArea(
              child: Column(
            children: [
              Image(image: AssetImage('images/profil.jpeg')),
              Container(
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                  child: Text("Abdun Nafi'",style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 40,
                  ),)),
              Container(
                  margin: EdgeInsets.only(top: 0, bottom: 0),
                  child: Text("(21670062)",style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 20,))),
            ],
          )
          ),
    );
  }
}