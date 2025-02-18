import 'package:flutter/material.dart';
import 'dart:math';

class DiceAppScreen extends StatefulWidget {
  const DiceAppScreen({super.key});

  @override
  State<DiceAppScreen> createState() => _DiceAppScreenState();
}

class _DiceAppScreenState extends State<DiceAppScreen> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceNumber (){
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: Text(
          "DICE APP",
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
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          changeDiceNumber();
                        },
                        child: Image.asset("images/dice$leftDiceNumber.png"),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          changeDiceNumber();
                        },
                        child: Image.asset("images/dice$rightDiceNumber.png"),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Your Dice Numbers Are: \n Left Dice = $leftDiceNumber, Right Dice = $rightDiceNumber",
                 textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
