import 'package:flutter/material.dart';
import 'package:gsk_firebase/provider.dart';
import 'package:provider/provider.dart';
class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(
        builder: (context,AuthProvider,x){
      return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: [
              TextField(
                controller: AuthProvider.emailCon,
              ),
              TextField(
                controller: AuthProvider.passwordCon,
              ),
              TextField(
                controller: AuthProvider.nameCon,
              ),
              TextField(
                controller: AuthProvider.ageCon,
              ),
              ElevatedButton(
                onPressed: (){
                  AuthProvider.signUp();

                },
                child: Text("done"),
              )
            ],
          ),
        ),
      );
    });
  }
}
