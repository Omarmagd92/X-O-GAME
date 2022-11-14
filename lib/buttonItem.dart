import 'package:flutter/material.dart';
class ButtonItem extends StatelessWidget {
String name;
Function onClicked;
int index;


ButtonItem(this.name, this.onClicked, this.index);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){onClicked(index);}, child: Text(name,style: TextStyle(fontSize: 30),));
  }
}
