import 'package:flutter/material.dart';
import 'package:flutter_app_fenlei/customeroute.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'dart:math' as math;
import 'setupdetails.dart/favorite.dart';
import 'setupdetails.dart/grade.dart';
import 'setupdetails.dart/security.dart';
import 'setupdetails.dart/weare.dart';

class SetUp extends StatefulWidget {
  final setupcolor;
  SetUp(this.setupcolor);
  @override
  _SetUpState createState() => _SetUpState();
}

List<String> imgs = [
  'http://hggard.com/Avatar/954397641',
  'http://hggard.com/Avatar/954397641',
  'http://hggard.com/Avatar/954397641',
  'http://hggard.com/Avatar/954397641'
];

class _SetUpState extends State<SetUp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: widget.setupcolor,
      alignment: Alignment.topCenter,
      child: Column(
        children: <Widget>[
          ClipPath(
            clipper: MultipleRoundedCurveClipper(),
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 3.5,
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(
                    "http://hggard.com/Avatar/954397641",
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 50),
                      child: Text(
                        "古明地觉的个人界面",
                        // shadow: Colors.white12,
                        style: TextStyle(
                            shadows: [
                              BoxShadow(
                                  color: Colors.purple[400],
                                  offset: Offset(-3, 3),
                                  blurRadius: 3)
                            ],
                            fontSize: 40,
                            color: Colors.pink[100],
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 50),
                      child: Text(
                        "待定",
                        style: TextStyle(
                            shadows: [
                              BoxShadow(
                                  color: Colors.purple[400],
                                  offset: Offset(-3, 3),
                                  blurRadius: 3)
                            ],
                            fontSize: 20,
                            color: Colors.pink[200],
                            fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Stack(
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
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 16,
                        color: Colors.white54,
                        child: ListTile(
                          leading: Icon(
                            Icons.favorite,
                            color: Colors.pink[200],
                            size: 30,
                          ),
                          title: Text(
                            "给我们点赞",
                            style: TextStyle(
                                color: Colors.pink[100],
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                shadows: [
                                  BoxShadow(
                                    color: Colors.pink[500],
                                    offset: Offset(-2, 1),
                                    blurRadius: 3,
                                  )
                                ]),
                          ),
                          trailing: Icon(
                            Icons.chevron_right,
                            color: Colors.pink[200],
                            size: 40,
                          ),
                          onTap: () {
                            print("给我们点赞");
                            Navigator.of(context)
                                .push(CustomeRoute(Favorite()));
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 16,
                        color: Colors.white54,
                        child: ListTile(
                          leading: Icon(
                            Icons.grade,
                            color: Colors.pink[200],
                            size: 30,
                          ),
                          title: Text(
                            "给我们评分",
                            style: TextStyle(
                                color: Colors.pink[100],
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                shadows: [
                                  BoxShadow(
                                    color: Colors.pink[500],
                                    offset: Offset(-2, 1),
                                    blurRadius: 3,
                                  )
                                ]),
                          ),
                          trailing: Icon(
                            Icons.chevron_right,
                            color: Colors.pink[200],
                            size: 40,
                          ),
                          onTap: () {
                            print("给我们评分");
                             Navigator.of(context)
                                .push(CustomeRoute(Grade()));
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 1),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 16,
                        color: Colors.white54,
                        child: ListTile(
                          leading: Icon(
                            Icons.touch_app,
                            color: Colors.pink[200],
                            size: 30,
                          ),
                          title: Text(
                            "关于我们",
                            style: TextStyle(
                                color: Colors.pink[100],
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                shadows: [
                                  BoxShadow(
                                    color: Colors.pink[500],
                                    offset: Offset(-2, 1),
                                    blurRadius: 3,
                                  )
                                ]),
                          ),
                          trailing: Icon(
                            Icons.chevron_right,
                            color: Colors.pink[200],
                            size: 40,
                          ),
                          onTap: () {
                            print("关于我们");
                             Navigator.of(context)
                                .push(CustomeRoute(Weare()));
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 16,
                        color: Colors.white54,
                        child: ListTile(
                          leading: Icon(
                            Icons.security,
                            color: Colors.pink[200],
                            size: 30,
                          ),
                          title: Text(
                            "用户协助与隐私声明",
                            style: TextStyle(
                                color: Colors.pink[100],
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                shadows: [
                                  BoxShadow(
                                    color: Colors.pink[500],
                                    offset: Offset(-2, 1),
                                    blurRadius: 3,
                                  )
                                ]),
                          ),
                          trailing: Icon(
                            Icons.chevron_right,
                            color: Colors.pink[200],
                            size: 40,
                          ),
                          onTap: () {
                            print("用户协助与隐私声明");
                             Navigator.of(context)
                                .push(CustomeRoute(Security()));
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 15),
            child: Container(
              height: MediaQuery.of(context).size.height / 3.5,
              width: MediaQuery.of(context).size.width,
              child: Swiper(
                autoplay: true,
                itemBuilder: (BuildContext onntext, int index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    child: Container(
                        child: Image.network(
                      imgs[index],
                      fit: BoxFit.cover,
                    )),
                  );
                },
                itemCount: imgs.length,
                pagination: SwiperPagination(
                  // alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(bottom: 5, left: 170),
                  builder: DotSwiperPaginationBuilder(
                    color: Colors.white60,
                    activeColor: Colors.pink[200],
                  ),
                ),
                // control: SwiperControl(color: Colors.pink[200]),
                ////3D卡牌滚动
                viewportFraction: 0.7,
                scale: 0.8,
                ////无限卡牌堆叠
                // itemWidth: 300.0,
                // layout: SwiperLayout.STACK,
                ////无限卡片堆叠2
                // itemWidth: 300.0,
                // itemHeight: 300.0,
                // layout: SwiperLayout.TINDER,
                //// 自定义效果
                // layout: SwiperLayout.CUSTOM,
                // customLayoutOption:
                //     new CustomLayoutOption(startIndex: -1, stateCount: 3)
                //         .addRotate([-40.0 / 180, 0.0, 40.0 / 180]).addTranslate([
                //   new Offset(-330.0, -40.0),
                //   new Offset(0.0, 0.0),
                //   new Offset(330.0, -40.0)
                // ]),
                // itemWidth: 300.0,
                // itemHeight: 200.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
