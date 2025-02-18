import 'package:flutter/material.dart';

class QuizzlerScreen extends StatefulWidget {
  const QuizzlerScreen({super.key});

  @override
  State<QuizzlerScreen> createState() => _QuizzlerScreenState();
}

class _QuizzlerScreenState extends State<QuizzlerScreen> {

  List <Icon> scoreKeeper = [
    Icon(Icons.check, color: Colors.green,),
    Icon(Icons.close, color: Colors.red,),
    Icon(Icons.close, color: Colors.red,),
    Icon(Icons.close, color: Colors.red,),
    Icon(Icons.close, color: Colors.red,),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.all(26.0),
                child: Center(
                  child: Text(
                    "there is your question",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0
                    ),
                  ),
                ),
              )),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green
                    ),
                    child: Text(
                      "True", style: TextStyle(color: Colors.white, fontSize: 16),
                    )),
              )),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: ElevatedButton(onPressed: () {
                  setState(() {
                    scoreKeeper.add(Icon(Icons.close, color: Colors.red,));
                  });
                },style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red
                ),
                    child: Text("False",style: TextStyle(
                      color: Colors.white,
                      fontSize: 16
                    ),)),
              )),
          Row(
            children: scoreKeeper
          ),
        ],
      )),
    );
  }
}
