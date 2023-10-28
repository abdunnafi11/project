import 'package:flutter/material.dart';
import 'package:login/dashboard.dart';


void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Halaman Login',
    home: Halamanutama(),
  ));
}
class Halamanutama extends StatefulWidget {
  const Halamanutama({super.key});

  @override
  State<Halamanutama> createState() => _HalamanutamaState();
}

class _HalamanutamaState extends State<Halamanutama> {
  bool visibilityPass = false;
  final String myUser ='admin';
  final String myPass ='12345';

  TextEditingController cUser = TextEditingController();
  TextEditingController cPass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 40,vertical: 200),
        width: double.infinity,height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.blue, Colors.green]
          )
        ),
        
        child: Card(
          elevation: 12,
          shadowColor: Colors.black,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: (30),
              ),
              Container(
                width: 100, height: 100,
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/foto.jpeg'),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children:[
                    TextField(
                      controller: cUser,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 2.0) 
                          ),
                          labelText: 'User Name',
                          hintText: 'Masukan Username Anda',
                          prefixIcon: Icon(Icons.person)
                      ),
                    ),
                    SizedBox(height: 10,),
                     TextField(
                      controller: cPass,
                      obscureText: !visibilityPass,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 2.0) 
                          ),
                          labelText: 'Password',
                          hintText: 'Masukan Password Anda',
                          suffixIcon: IconButton(
                            onPressed:(){
                              setState(() {
                                visibilityPass=!visibilityPass;
                              });

                            },
                            icon: visibilityPass ? Icon(Icons.visibility)
                            : Icon(Icons.visibility_off)
                          )
                      ),
                    ),
                    SizedBox(height: 10,),
                    ElevatedButton(onPressed:(){
                      cekLogin(context);
                    },
                     child: Text('L O G I N'))
                  ]),
              )
            ],
          ),

        ),
      ),
    );
  }
  void cekLogin(BuildContext context){

    if (cUser.text == myUser && cPass.text == myPass) {
      Navigator.push(
        context,
         MaterialPageRoute(
          builder: (context) => dashboard(),));
    }else if(cUser.text.isEmpty|| cPass.text.isEmpty){
       ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Username dan Password Harus di Isi!'),
         backgroundColor: Colors.red,
         ));
    }
    
    else{
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Username dan Password anda Salah!'),
         backgroundColor: Colors.red,
         ));
    }
  }
}


