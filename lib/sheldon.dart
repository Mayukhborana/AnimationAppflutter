import 'package:flutter/material.dart';
import 'package:AnimationApp/mood.dart';

class sheldon extends StatefulWidget {
  @override
  _sheldonState createState() => _sheldonState();
}

class _sheldonState extends State<sheldon> with TickerProviderStateMixin {
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

    animation = CurvedAnimation(parent: myanicon, curve: Curves.easeInOutCirc)
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
        color: Colors.blueAccent,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 220),
              child: Card(
                color: Colors.amber,
                elevation: 55 * animation.value,
                child: GestureDetector(
                  onTap: () {
                    myanicon.forward(from: 0.2);
                  },
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          width: 400 * animation.value + 50,
                          height: 300 * animation.value + 50,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/5.webp'),
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
