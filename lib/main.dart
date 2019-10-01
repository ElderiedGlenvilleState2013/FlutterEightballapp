import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.yellow,
          appBar: AppBar(
            title: Text('Ask me Anything'),
            backgroundColor: Colors.black,
          ),
          body: EightBallPage(),
        ),
      ),
    );

class EightBallPage extends StatefulWidget {
  @override
  _EightBallPageState createState() => _EightBallPageState();
}

class _EightBallPageState extends State<EightBallPage> {
  int ballnum = 1;
  void updateDice() {
    setState(() {
      ballnum = Random().nextInt(5) + 1;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: (){
          updateDice();

        },
          child: Image.asset('images/ball$ballnum.png')
      )


    );
  }
}
