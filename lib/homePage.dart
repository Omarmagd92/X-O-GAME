import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xo_game/buttonItem.dart';
import 'package:xo_game/model.dart';

class HomePage extends StatefulWidget {
  static String RouteName = "homepage";


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int score1=0;
  int score2=0;

  List<String>names=[
    "","","",
    "","","",
    "","","",];
  @override
  Widget build(BuildContext context) {
  DataModel args  =ModalRoute.of(context)?.settings.arguments as DataModel ;
    return Scaffold(
      appBar: AppBar(
          title: Text("XO Game", style: TextStyle(fontSize: 24)),
          centerTitle: true),
      body: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "${args.player1Name}",
                      style: TextStyle(fontSize: 24),
                    ),
                    Text(
                      "$score1",
                      style: TextStyle(fontSize: 24),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "${args.player2Name}",
                      style: TextStyle(fontSize: 24),
                    ),
                    Text(
                      "$score2",
                      style: TextStyle(fontSize: 24),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
              Expanded(
                child: ButtonItem(
                    names[0], onButtonClicked, 0),
              ),
              Expanded(
                child: ButtonItem(
                    names[1], onButtonClicked, 1),
              ),
              Expanded(
                child: ButtonItem(
                    names[2], onButtonClicked, 2),
              ),
            ],),
          ),
          Expanded(
            child: Row(crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
              Expanded(
                child: ButtonItem(
                    names[3], onButtonClicked, 3),
              ),
              Expanded(
                child: ButtonItem(
                    names[4], onButtonClicked, 4),
              ),
              Expanded(
                child: ButtonItem(
                    names[5], onButtonClicked, 5),
              ),
            ],),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,children: [
              Expanded(
                child: ButtonItem(
                    names[6], onButtonClicked, 6),
              ),
              Expanded(
                child: ButtonItem(
                    names[7], onButtonClicked, 7),
              ),
              Expanded(
                child: ButtonItem(
                    names[8], onButtonClicked, 8),
              ),
            ],),
          ),
        ],
      ),
    );
  }
  int counter=0;
  void onButtonClicked(int index){
    if(names[index].isNotEmpty){return;}
    if (counter%2==0){
      names[index]="X";
      score1+=2;
      bool winner=checkWinner("X");
      print(winner);
      print(index);
      if(winner){
        score1+=10;
      }


    }
    else{names[index]="O";
    score2+=2;
    bool winner=checkWinner("O");
    print(winner);
    print(index);
    if(winner){
      score2+=10;
    }
    }
    counter++;
    setState(() {

    });
  }
  bool checkWinner(String symbol){
for(int i=0; i<9;i+=3){
  if(names[i]==symbol&&
      names[i+1]==symbol&&
      names[i+2]==symbol){
    return true;
  }
}
for(int i=0; i<3;i++){
  if(names[i]==symbol&&
      names[i+3]==symbol&&
      names[i+6]==symbol){
    return true;
  }
}
if(names[0]==symbol&&names[4]==symbol&&names[8]==symbol){
  return true;
}
if(names[2]==symbol&&names[4]==symbol&&names[6]==symbol){
  return true;
}
return false;
  }
}
