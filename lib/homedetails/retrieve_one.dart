import 'package:flutter/material.dart';
import 'package:flutter_app_fenlei/customeroute.dart';
import 'package:flutter_app_fenlei/homedetails/retrieve_our.dart';
import 'package:flutter_app_fenlei/tools.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
// import 'package:flutter_speed_dial/flutter_speed_dial.dart';
// import 'ceshi.dart';

String l1;
String l2;
String l3;
String l4;

List neiRong = [
  {
    "name": l1,
  },
  {
    "name": l2,
  },
  {
    "name": l3,
  },
  {
    "name": l4,
  },
];

class RetrieveOne extends StatefulWidget {
  final fen;
  RetrieveOne(this.fen);

  @override
  _RetrieveOneState createState() => _RetrieveOneState();
}

class _RetrieveOneState extends State<RetrieveOne> {
  @override
  void initState() {
    super.initState();
    l1 = widget.fen["l1"];
    l2 = widget.fen["l2"];
    l3 = widget.fen["l3"];
    l4 = widget.fen["l4"];

    setState(() {
      neiRong = [
        {
          "name": l1,
        },
        {
          "name": l2,
        },
        {
          "name": l3,
        },
        {
          "name": l4,
        },
      ];
    });
  }

  @override
  Widget build(BuildContext context) {
    callFunc.number = widget.fen;
    callFunc.neirongshu = neiRong;
    return Column(
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
                child: NeiStack(widget.fen),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            child: Container(
              alignment: Alignment.center,
              color: Colors.pink[100],
              height: 40,
              width: 120,
              child: Text(
                "相关物品",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Colors.pink[300]),
              ),
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
              children: neiRong.map((value) {
                return AnimationRow(value);
              }).toList(),
            ),
          ),
        )
      ],
    );
  }
}

class NeiStack extends StatefulWidget {
  final hfen;
  NeiStack(this.hfen);
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
            // ret[int.parse(callFunc.number)]["retrieve"],
            widget.hfen["retrieve"],
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
            widget.hfen["js1"],
            // "1",
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
              alignment: Alignment.center,
              color: Colors.pink[200],
              height: 40,
              width: 120,
              child: Text(
                "投放要求",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Colors.pink[100]),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10, bottom: 20),
          child: Text(
            widget.hfen["js2"],
            // "1",
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
              alignment: Alignment.center,
              color: Colors.pink[200],
              height: 40,
              width: 120,
              child: Text(
                "主要包括",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Colors.pink[100]),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 10,
          ),
          child: Text(
            widget.hfen["js3"],
            // "1",
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

// List ret = [
//   {
//     "value": 0,
//     "title": "分类一:子类一",
//     "retrieve": "一",
//   },
//   {
//     "value": 1,
//     "title": "分类一:子类二",
//     "retrieve": "二",
//   },
//   {
//     "value": 2,
//     "title": "分类一:子类三",
//     "retrieve": "三",
//   },
//   {
//     "value": 3,
//     "title": "分类一:子类四",
//     "retrieve": "四",
//   },
// ];

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
              Navigator.of(context).push(CustomeRoute(
                  RetrieveOur(callFunc.neirongshu, widget.name["name"])));
              // Navigator.of(context)
              //     .push(CustomeRoute(Ceshi(callFunc.neirongshu)));

              // print(callFunc.neirongshu);
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
