import 'package:AnimationApp/SplashScreen.dart';
import 'package:AnimationApp/emojii.dart';
import 'package:AnimationApp/main.dart';
import 'package:AnimationApp/sheldon.dart';
import 'package:flutter/material.dart';
import 'package:AnimationApp/harrypotter.dart';
import 'package:AnimationApp/bigbang.dart';

class mood extends StatefulWidget {
  @override
  _moodState createState() => _moodState();
}

class _moodState extends State<mood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: animatedBody(),
    );
  }
}

// ignore: camel_case_types
class animatedBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Card(
                color: Colors.black,
                elevation: 30,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    side: BorderSide(width: 5, color: Colors.black)),
                child: Center(
                  child: Container(
                    width: 280,
                    child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.red)),
                        color: Colors.black,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => emojii()));
                        },
                        child: Text(
                          'Emoji 😂PLAY😜',
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              color: Colors.amber),
                        )),
                  ),
                ),
              ),
            ),
            Hero(
              tag: 'harry',
              child: Padding(
                padding: EdgeInsets.all(1.0),
                child: CircleAvatar(
                  radius: 100.0,
                  backgroundImage: NetworkImage(
                      'https://media1.giphy.com/media/26BRzozg4TCBXv6QU/200w.webp?cid=ecf05e47h2ikmaaphc9th5kqeystnqz64xy7xpij16d5msyz&rid=200w.webp'),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Card(
                color: Colors.black,
                elevation: 30,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    side: BorderSide(width: 5, color: Colors.black)),
                child: Center(
                  child: Container(
                    width: 280,
                    child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.red)),
                        color: Colors.black,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => harrypotter()));
                        },
                        child: Text(
                          'HARRYPOTTER',
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              color: Colors.amber),
                        )),
                  ),
                ),
              ),
            ),
            Hero(
              tag: 'THE BIG BANG THEORY',
              child: Padding(
                padding: EdgeInsets.all(1.0),
                child: CircleAvatar(
                  radius: 100.0,
                  backgroundImage: NetworkImage(
                      'https://media4.giphy.com/media/fOVGTYyYtV6Ra/giphy.webp?cid=ecf05e47dwvc8ypiezz14pdtkwrabhvozifhwhfu19qcuh3o&rid=giphy.webp'),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Card(
                color: Colors.black,
                elevation: 20,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    side: BorderSide(width: 5, color: Colors.black)),
                child: Center(
                  child: Container(
                    width: 280,
                    child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.blue)),
                        color: Colors.black,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => bigbang()));
                        },
                        child: Text(
                          'THE BIG BANG THEORY',
                          style: TextStyle(
                              fontSize: 32,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                              color: Colors.amber),
                        )),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
