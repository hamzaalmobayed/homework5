import 'package:flutter/material.dart';
import 'package:gsk_firebase/login.dart';
import 'package:gsk_firebase/provider.dart';
import 'package:gsk_firebase/ui.dart';
import 'package:provider/provider.dart';
class  HomeMain extends StatefulWidget {


  @override
  _HomeMainState createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar:AppBar(),
    body:Center(
child:Column(
children:[
ElevatedButton(
onPressed: (){
Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (con)=>Home()));
},
child: Text("SignUp"),
),
ElevatedButton(
onPressed: (){
  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (con)=>Login()));

},
child: Text("login"),
)

]
)
)
    );
  }
}
