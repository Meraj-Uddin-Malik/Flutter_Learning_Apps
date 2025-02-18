import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class XylophoneScreen extends StatefulWidget {
  const XylophoneScreen({super.key});

  @override
  State<XylophoneScreen> createState() => _XylophoneScreenState();
}

class _XylophoneScreenState extends State<XylophoneScreen> {

  void playSound(int soundNumber) async {
    final player = AudioPlayer(); // Initialize the AudioPlayer
    String path = 'note$soundNumber.wav';
    await player.play(AssetSource(path));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: Text(
          "XYLOPHONE APP",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: "Barlow",
              fontSize: 18),
        ),
        backgroundColor: Colors.deepPurple.shade900,
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.blue, // Button background color
                    fixedSize: Size(400, 100),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero)// Width, Height
                ),
                onPressed: () {
                  playSound(1);
                },
                child: Center(
                  child: Text(
                    "Click Me",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Barlow",
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.red, // Button background color
                    fixedSize: Size(400, 100),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero)// Width, Height
                ),
                onPressed: () {
                  playSound(2);
                },
                child: Center(
                  child: Text(
                    "Click Me",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Barlow",
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.yellow, // Button background color
                    fixedSize: Size(400, 100),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero)// Width, Height
                ),
                onPressed: () {
                  playSound(3);
                },
                child: Center(
                  child: Text(
                    "Click Me",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Barlow",
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.green, // Button background color
                    fixedSize: Size(400, 100),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero)// Width, Height
                ),
                onPressed: () {
                  playSound(4);
                },
                child: Center(
                  child: Text(
                    "Click Me",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Barlow",
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.purple, // Button background color
                    fixedSize: Size(400, 100),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero)// Width, Height
                ),
                onPressed: () {
                  playSound(5);
                },
                child: Center(
                  child: Text(
                    "Click Me",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Barlow",
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.amber, // Button background color
                    fixedSize: Size(400, 100),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero)// Width, Height
                ),
                onPressed: () {
                  playSound(6);
                },
                child: Center(
                  child: Text(
                    "Click Me",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Barlow",
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.grey, // Button background color
                    fixedSize: Size(400, 100),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero)// Width, Height
                ),
                onPressed: () {
                  playSound(7);
                },
                child: Center(
                  child: Text(
                    "Click Me",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Barlow",
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
