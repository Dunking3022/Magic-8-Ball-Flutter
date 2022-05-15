import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';



void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          title: Center(child: Text('Ask Me Anything')),
          backgroundColor: Colors.blueAccent,
        ),
        body: DicePage(), 
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int ballNumber = 1;

  void pressBut(){
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: FlatButton(
                onPressed: () {pressBut();
                },
                child: Image.asset("images/ball$ballNumber.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
