import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(NumbersApp());

class NumbersApp extends StatelessWidget {
  void playSound(int x) {
    final player = AudioCache();
    player.play('$x.wav');
  }

  SizedBox buildKey({Color color, int sound, String cn}) {
    return SizedBox(
      child: Center(
        child: Container(
          margin: new EdgeInsets.all(3.0),
          child: RaisedButton(
            padding: EdgeInsets.all(10.0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
                side: BorderSide(color: Colors.black, width: 2.0)),
            color: color,
            onPressed: () {
              playSound(sound);
            },
            child: Container(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: 30.0,
                  maxWidth: 200.0,
                  maxHeight: 80.0,
                  minWidth: 30.0,
                ),
                child: Text(
                  '$sound-$cn',
                  style: TextStyle(fontSize: 27.0),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.teal,
        title: Center(
            child: Text(
          'Number Count',
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
      ),
      backgroundColor: Colors.black,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/back.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: new Stack(children: <Widget>[
          SafeArea(
              child: Column(children: <Widget>[
            buildKey(color: Colors.red, sound: 1, cn: 'RED'),
            buildKey(color: Colors.orange, sound: 2, cn: 'ORANGE'),
            buildKey(color: Colors.yellow, sound: 3, cn: 'YELLOW'),
            buildKey(color: Colors.pink, sound: 4, cn: 'PINK'),
            buildKey(color: Colors.brown, sound: 5, cn: 'BROWN'),
            buildKey(color: Colors.blue, sound: 6, cn: 'BLUE'),
            buildKey(color: Colors.green, sound: 7, cn: 'GREEN'),
            buildKey(color: Colors.purple, sound: 8, cn: 'PURPLE'),
            buildKey(color: Colors.lightGreen, sound: 9, cn: 'LIGHTGREEN'),
            buildKey(color: Colors.white, sound: 10, cn: 'WHITE'),
          ])),
        ]),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.teal,
        child: Text(
          "                       Made with ❤ by VP",
          style: TextStyle(letterSpacing: (2.0), color: Colors.white),
        ),
      ),
    ));
  }
}
