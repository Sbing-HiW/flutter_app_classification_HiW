import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class Favorite extends StatefulWidget {
  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("点赞"),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 3.5,
            width: MediaQuery.of(context).size.width,
            child: Transform.rotate(
              angle: math.pi,
              child: ClipPath(
                clipper: MultipleRoundedCurveClipper(),
                child: Container(
                  height: MediaQuery.of(context).size.height / 3.5,
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
    );
  }
}
