import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_app_fenlei/tools.dart';

class RetrieveOur extends StatefulWidget {
  final value;
  final name;
  RetrieveOur(this.value, this.name);

  @override
  _RetrieveOurState createState() => _RetrieveOurState();
}

List ne = [];

class _RetrieveOurState extends State<RetrieveOur> {
  @override
  void initState() {
    super.initState();
    ne = widget.value;
    callFunc.ou = widget.name;
  }

  @override
  Widget build(BuildContext context) {
    callFunc.valf = (value) {
      //跨函数刷新界面
      setState(() {
        callFunc.ou = value;
        print(callFunc.ou + "value");
      });
    };
    return Scaffold(
      backgroundColor: Colors.pink[200],
      appBar: AppBar(
        title: Text(
          callFunc.ou,
          style: TextStyle(
              shadows: [
                BoxShadow(
                    color: Colors.pink[300],
                    offset: Offset(-3, 1),
                    blurRadius: 2)
              ],
              fontSize: 30,
              color: Colors.pink[100],
              fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.pink[200],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 10, left: 5, right: 5),
              child: Container(
                height: MediaQuery.of(context).size.width,
                width: MediaQuery.of(context).size.width,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Container(
                    color: Colors.pink[100],
                    child: NeiStack(callFunc.ou),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                child: Container(
                  color: Colors.pink[100],
                  height: 40,
                  width: 120,
                ),
              ),
            ),
            AnimationLimiter(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: AnimationConfiguration.toStaggeredList(
                  duration: Duration(milliseconds: 375),
                  childAnimationBuilder: (widget) => SlideAnimation(
                    duration: Duration(seconds: 1),
                    verticalOffset: 50.0,
                    child: FadeInAnimation(
                      duration: Duration(seconds: 1),
                      child: widget,
                    ),
                  ),
                  children: ne.map((value) {
                    return AnimationRow(value);
                  }).toList(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class NeiStack extends StatefulWidget {
  final value;
  NeiStack(this.value);
  @override
  _NeiStackState createState() => _NeiStackState();
}

class _NeiStackState extends State<NeiStack> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 10, top: 10),
          child: Text(
            widget.value,
            style: TextStyle(
                color: Colors.pink[100],
                fontSize: 25,
                fontWeight: FontWeight.w500,
                shadows: [
                  BoxShadow(
                    color: Colors.pink[400],
                    offset: Offset(-3, 1),
                    blurRadius: 3,
                  )
                ]),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10, bottom: 20),
          child: Text(
            "介绍一",
            style: TextStyle(
                color: Colors.pink[300],
                fontSize: 18,
                fontWeight: FontWeight.w500),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            child: Container(
              color: Colors.pink[200],
              height: 40,
              width: 120,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10, bottom: 20),
          child: Text(
            "介绍二",
            style: TextStyle(
                color: Colors.pink[300],
                fontSize: 13,
                fontWeight: FontWeight.w500),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            child: Container(
              color: Colors.pink[200],
              height: 40,
              width: 120,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 10,
          ),
          child: Text(
            "介绍三",
            style: TextStyle(
                color: Colors.pink[300],
                fontSize: 13,
                fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}

//// Row动画
class AnimationRow extends StatefulWidget {
  final name;
  AnimationRow(this.name);
  @override
  _AnimationRowState createState() => _AnimationRowState();
}

class _AnimationRowState extends State<AnimationRow> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
          child: GestureDetector(
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Container(
                    color: Colors.pink[100],
                    height: 80,
                    width: 80,
                    child:
                        Image.network("http://hggard.com/Avatar/954397641"))),
            onTap: () {
              setState(() {
                callFunc.valf(widget.name["name"]);
                print(widget.name["name"]);
              });
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Text(
            widget.name["name"],
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15,
                color: Colors.pink[500]),
          ),
        )
      ],
    );
  }
}

void m() {
  var a, b;

  a = 0;
  b = ++a; // Increment a before b gets its value.
  assert(a == b); // 1 == 1

  a = 0;
  b = a++; // Increment a AFTER b gets its value.
  assert(a != b); // 1 != 0

  a = 0;
  b = --a; // Decrement a before b gets its value.
  assert(a == b); // -1 == -1

  a = 0;
  b = a--; // Decrement a AFTER b gets its value.
  assert(a != b); // -1 != 0
}
