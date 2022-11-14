import 'package:flutter/material.dart';
import 'package:xo_game/homePage.dart';
import 'package:xo_game/model.dart';
class LoginScreen extends StatelessWidget {
 static String RouteName="LoginScreen";
String player1Name="";
 String player2Name="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
        title: Text(
          "login",style: TextStyle(fontSize: 26),),centerTitle: true),
    body: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(children: [
        TextField(style: TextStyle(fontSize: 24),
          decoration: InputDecoration(label:Text(
        "player1",style: TextStyle(fontSize: 26),) ),
        onChanged: (value){player1Name=value;
        }
),
        TextField(style: TextStyle(fontSize: 24),
          decoration: InputDecoration(label:Text(
            "player2",style: TextStyle(fontSize: 26),) ),
        onChanged: (value){player2Name=value;}),
        SizedBox(height: 20,),
        ElevatedButton(onPressed: (){
          Navigator.pushNamed(context, HomePage.RouteName,arguments:DataModel(player1Name, player2Name),);
        }, child:Text(
          "let is go",style: TextStyle(fontSize: 26),) )
      ]),
    ),);
  }
}
