import 'package:flutter/material.dart';
import 'dart:math';

class MagicballScreen extends StatefulWidget {
  const MagicballScreen({super.key});


  @override
  State<MagicballScreen> createState() => _MagicballScreenState();
}

int ballNumber = 1;


class _MagicballScreenState extends State<MagicballScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: Text(
          "MAGIC 8 BALL APP",
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: "Sans Code Pro",
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.deepPurple.shade900,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
            child: TextButton(
                onPressed: () {
                  setState(() {
                    ballNumber = Random().nextInt(5) + 1;
                  });

                }, child: Image.asset('images/ball$ballNumber.png'))),
      ),
    );
  }
}
