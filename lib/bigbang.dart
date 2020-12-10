import 'package:AnimationApp/leonard.dart';
import 'package:AnimationApp/penny.dart';
import 'package:AnimationApp/raj.dart';
import 'package:AnimationApp/sheldon.dart';
import 'package:flutter/material.dart';

class bigbang extends StatefulWidget {
  @override
  _bigbangState createState() => _bigbangState();
}

class _bigbangState extends State<bigbang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: hello(),
    );
  }
}

class hello extends StatelessWidget {
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => sheldon()));
                        },
                        child: Text(
                          'Sheldon',
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
                                  builder: (context) => (leonard())));
                        },
                        child: Text(
                          'Leonard',
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
                              MaterialPageRoute(builder: (context) => penny()));
                        },
                        child: Text(
                          'Penny',
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
                              MaterialPageRoute(builder: (context) => raj()));
                        },
                        child: Text(
                          'RAJ',
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
