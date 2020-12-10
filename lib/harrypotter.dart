import 'package:AnimationApp/harry.dart';
import 'package:AnimationApp/hermione.dart';
import 'package:AnimationApp/ron.dart';
import 'package:flutter/material.dart';
import 'package:AnimationApp/mood.dart';

class harrypotter extends StatefulWidget {
  @override
  _harrypotterState createState() => _harrypotterState();
}

class _harrypotterState extends State<harrypotter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: hello1(),
    );
  }
}

class hello1 extends StatelessWidget {
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
              margin: EdgeInsets.only(top: 200),
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
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => harry()));
                        },
                        child: Text(
                          'Harry Potter',
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
            Container(
              margin: EdgeInsets.only(top: 50),
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
                                  builder: (context) => hermione()));
                        },
                        child: Text(
                          'Hermione Granger',
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
            Container(
              margin: EdgeInsets.only(top: 50),
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
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => ron()));
                        },
                        child: Text(
                          'Ron Weasley',
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
          ],
        ),
      ),
    );
  }
}
