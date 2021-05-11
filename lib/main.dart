import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Game',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyGame(),
    );
  }
}

class MyGame extends StatefulWidget {
  @override
  _MyGameState createState() => _MyGameState();
}

class _MyGameState extends State<MyGame> {
  int leftImage = Random().nextInt(9) + 1;
  int rightImage = Random().nextInt(9) + 1;
  void numberGenerator() {
    setState(() {
      leftImage = Random().nextInt(9) + 1;
      rightImage = Random().nextInt(9) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "تطابق الصور  ",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22.0,
          ),
        ),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.green[900],
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              leftImage == rightImage ? "مبروك لقد نجحت" : "حاول مرا اخرى ",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28.0,
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(12.0),
                    child: TextButton(
                      onPressed: () {
                        numberGenerator();
                      },
                      child: Image(
                        image: AssetImage(
                          "assets/images/image-$leftImage.png",
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(12.0),
                    child: TextButton(
                      onPressed: () {
                        numberGenerator();
                      },
                      child: Image(
                        image: AssetImage(
                          "assets/images/image-$rightImage.png",
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
