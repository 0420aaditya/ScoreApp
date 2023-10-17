import 'package:flutter/material.dart';
// import 'dart:ui' show lerpDouble;

void main() {
  runApp(ScoreApp());
}

class ScoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Score App",
      home: ScoreHome(),
    );
  }
}

class ScoreHome extends StatefulWidget {
  @override
  State<ScoreHome> createState() => _ScoreHomeState();
}

class _ScoreHomeState extends State<ScoreHome> {
  int num = 0;

  void increaseNumber() {
    setState(() {
      num++;
    });
  }

  void decreaseNumber() {
    setState(() {
      num--;
    });
  }

  void resetNumber() {
    setState(() {
      num = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Score App"),
      ),

      //reset Button
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore),
        onPressed: resetNumber,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Center(
            child: Text(
              "Score is:",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Text(
              num.toString(),
              style: TextStyle(
                color: Colors.blue,
                fontSize: 90,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text("Increase"),
                onPressed: increaseNumber,
              ),
              SizedBox(
                width: 100,
              ),
              ElevatedButton(
                child: Text("Decrease"),
                onPressed: decreaseNumber,
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 100, 232, 79)),
                  // Other button style properties go here
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
