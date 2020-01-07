import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'dart:math' as math;
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class Security extends StatefulWidget {
  @override
  _SecurityState createState() => _SecurityState();
}

class _SecurityState extends State<Security> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.pink[300]),
          title: Text(
            "用户协助与隐私声明",
            style: TextStyle(
                shadows: [
                  BoxShadow(
                      color: Colors.pink[400],
                      offset: Offset(-3, 1),
                      blurRadius: 2)
                ],
                fontSize: 30,
                color: Colors.pink[100],
                fontWeight: FontWeight.w600),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.all(
          //     Radius.circular(40)
          //   )
          // ),
        ),
        backgroundColor: Colors.pink[100],
        body: Container(
          alignment: Alignment.topCenter,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              FlipCard(
                direction: FlipDirection.HORIZONTAL,
                front: Stack(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height / 2.2515,
                      width: MediaQuery.of(context).size.width,
                      child: ClipPath(
                        clipper: MultipleRoundedCurveClipper(),
                        child: Container(
                          height: MediaQuery.of(context).size.height / 2.2515,
                          width: MediaQuery.of(context).size.width,
                          child: Image.network(
                            "http://hggard.com/Avatar/954397641",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                back: Stack(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height / 2.2515,
                      width: MediaQuery.of(context).size.width,
                      child: ClipPath(
                        clipper: MultipleRoundedCurveClipper(),
                        child: Container(
                          color: Colors.pink[200],
                          height: MediaQuery.of(context).size.height / 2.2515,
                          width: MediaQuery.of(context).size.width,
                          child: Image.network(
                            "http://hggard.com/Avatar/954397641",
                            fit: BoxFit.cover,
                            color: Colors.black,
                            colorBlendMode: BlendMode.hue,
                          ),
                        ),
                      ),
                    ),
                    
                  ],
                ),
              ),
              FlipCard(
                direction: FlipDirection.HORIZONTAL,
                front: Stack(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height / 2.2515,
                      width: MediaQuery.of(context).size.width,
                      child: Transform.rotate(
                        angle: math.pi,
                        child: ClipPath(
                          clipper: MultipleRoundedCurveClipper(),
                          child: Container(
                            height: MediaQuery.of(context).size.height / 2.254,
                            width: MediaQuery.of(context).size.width,
                            child: Transform.rotate(
                              angle: math.pi,
                              child: Image.network(
                                "http://hggard.com/Avatar/954397641",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                back: Stack(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height / 2.2515,
                      width: MediaQuery.of(context).size.width,
                      child: Transform.rotate(
                        angle: math.pi,
                        child: ClipPath(
                          clipper: MultipleRoundedCurveClipper(),
                          child: Container(
                            height: MediaQuery.of(context).size.height / 2.254,
                            width: MediaQuery.of(context).size.width,
                            child: Transform.rotate(
                              angle: math.pi,
                              child: Image.network(
                                "http://hggard.com/Avatar/954397641",
                                fit: BoxFit.cover,
                                color: Colors.black,
                                colorBlendMode: BlendMode.hue,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
