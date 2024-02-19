import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData.dark(),
      home: const Ballpage(),
    ),
  );
}

class Ballpage extends StatelessWidget {
  const Ballpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: const Text('My Guide Device'),
      ),
      body: const Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  var ballNumber = 1;
  void clickit() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Center(
        child: TextButton(
          child: Image.asset('images/ball$ballNumber.png'),
          onPressed: () {
            clickit();
          },
        ),
      ),
    );
  }
}
