import 'package:flutter/material.dart';

class raj extends StatefulWidget {
  @override
  _rajState createState() => _rajState();
}

class _rajState extends State<raj> with TickerProviderStateMixin {
  var myanicon;
  var animation;

  @override
  void initState() {
    super.initState();
    myanicon = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );

    print(myanicon);

    animation = CurvedAnimation(parent: myanicon, curve: Curves.easeInCubic)
      ..addListener(() {
        setState(() {
          print(animation.value);
        });
      });

    print(animation);

    myanicon.forward();
    print(myanicon);
  }

  @override
  void dispose() {
    super.dispose();
    myanicon.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.pinkAccent,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 220),
              child: Card(
                color: Colors.blue,
                elevation: 55 * animation.value,
                child: GestureDetector(
                  onTap: () {
                    myanicon.forward(from: 0.5);
                  },
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          width: 400 * animation.value + 50,
                          height: 300 * animation.value + 50,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/25.gif'),
                                  fit: BoxFit.fill)),
                        ),
                      ],
                    ),
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
