import 'package:flutter/material.dart';
import 'package:gsk_firebase/provider.dart';
import 'package:provider/provider.dart';
class Login extends StatefulWidget {

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

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

                  ElevatedButton(
                    onPressed: (){
                      AuthProvider.signIn();
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
