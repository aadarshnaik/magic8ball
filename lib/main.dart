import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue[900],
        ),
        body: magicBall(),
      ),
    ),
  );
}

class magicBall extends StatefulWidget {
  const magicBall({Key? key}) : super(key: key);

  @override
  _magicBallState createState() => _magicBallState();
}

class _magicBallState extends State<magicBall> {

  int ballNo = 1;

  void answer(){
    setState(() {
      ballNo = Random().nextInt(5)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                answer();
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('images/ball$ballNo.png'),
              ),
      )

          )
        ],
      ),
    );
  }
}
