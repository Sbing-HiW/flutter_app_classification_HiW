import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'package:flutter_app_fenlei/text_ex.dart';
import 'dart:ui';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'customeroute.dart';
import 'homedetails/details.dart';
// import 'tools.dart';

class Home extends StatefulWidget {
  final homecolor;
  Home(this.homecolor);
  @override
  _HomeState createState() => _HomeState();
}

Gradient gradient = LinearGradient(colors: [
  Colors.blueAccent,
  Colors.greenAccent,
]);

List<String> imgs = [
  'http://hggard.com/Avatar/954397641',
  'http://hggard.com/Avatar/954397641',
  'http://hggard.com/Avatar/954397641',
  'http://hggard.com/Avatar/954397641'
];

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: widget.homecolor,
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: NetworkImage(
        //         "http://qqpublic.qpic.cn/qq_public/0/0-2246992349-D05A35A3942B37F2A4B105C4AEA2A20E/0?fmt=jpeg&size=114&rs=64-64&h=800&w=560&ppv=1"),
        //     fit: BoxFit.cover,
        //   ),
        // ),
        alignment: Alignment.topCenter,
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipPath(
                  clipper: OvalBottomBorderClipper(),
                  child: Container(
                      height: MediaQuery.of(context).size.height / 2.2,
                      width: MediaQuery.of(context).size.width,
                      child: Swiper(
                        autoplay: true,
                        itemBuilder: (BuildContext onntext, int index) {
                          return prefix0.Image.network(
                            imgs[index],
                            fit: BoxFit.cover,
                          );
                        },
                        itemCount: imgs.length,
                        pagination: SwiperPagination(
                          alignment: Alignment.bottomCenter,
                          // margin: EdgeInsets.all(10),
                          builder: DotSwiperPaginationBuilder(
                            color: Colors.white30,
                            activeColor: Colors.pink[200],
                          ),
                        ),
                        // control: SwiperControl(color: Colors.pink[200]),
                        ////3D卡牌滚动
                        // viewportFraction: 0.8,
                        // scale: 0.9,

                        ////无限卡牌堆叠
                        // itemWidth: 300.0,
                        // layout: SwiperLayout.STACK,

                        // // 无限卡片堆叠2
                        // itemWidth: 300.0,
                        // itemHeight: 300.0,
                        // layout: SwiperLayout.TINDER,

                        ////自定义效果
                        // layout: SwiperLayout.CUSTOM,
                        // customLayoutOption: new CustomLayoutOption(
                        //         startIndex: -1, stateCount: 3)
                        //     .addRotate(
                        //         [-45.0 / 180, 0.0, 45.0 / 180]).addTranslate([
                        //   new Offset(-370.0, -40.0),
                        //   new Offset(0.0, 0.0),
                        //   new Offset(370.0, -40.0)
                        // ]),
                        // itemWidth: 300.0,
                        // itemHeight: 200.0,
                      )),
                ),
                Positioned(
                    bottom: 0,
                    child: ClipPath(
                      clipper: OvalBottomBorderClipper(),
                      child: Container(
                        // color: Colors.pink,
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 2.7,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(bottom: 2),
                                  child: Text(
                                    "垃圾分类",
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
                                  child: TextEx(
                                    "保护环境，能像风一样自由。",
                                    shadow: Colors.white12,
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.pink[200],
                                        fontWeight: FontWeight.w600),
                                  ),
                                )
                              ],
                            ),
                            // Container(
                            //   height: 130,
                            //   child: RichText(
                            //     textAlign: TextAlign.center,
                            //     text: TextSpan(
                            //       children: [
                            //         TextSpan(
                            //           text: "古明地觉",
                            //           style: TextStyle(
                            //               fontSize: 40,
                            //               color: Colors.pink[300],
                            //               fontWeight: FontWeight.w600),
                            //         ),
                            //         TextSpan(
                            //           text: "\n待定",
                            //           style: TextStyle(
                            //               fontSize: 20,
                            //               color: Colors.pink[200],
                            //               fontWeight: FontWeight.w600),
                            //         )
                            //       ],
                            //     ),
                            //   ),
                            // ),
                            ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                              child: Container(
                                color: Colors.white54,
                                height: 60,
                                width: MediaQuery.of(context).size.width,

                                child: Center(
                                  child: Text(
                                    "搜索栏",
                                    style: TextStyle(
                                      color: Colors.pink[300],
                                    ),
                                  ),
                                ),
                                // margin: EdgeInsets.only(top: 20),
                              ),
                            )
                          ],
                        ),
                      ),
                    ))
              ],
            ),
            Container(
                // color: Colors.pink[200],

                height: 50,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(top: 10),
                child: Center(
                  child: Text(
                    "—— 分类检索 ——",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.pink[400],
                        fontSize: 22,
                        fontWeight: FontWeight.w500),
                  ),
                )),
            Container(
              height: 320,
              child: GridView(
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.all(0),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

                    //横轴元素个数
                    crossAxisCount: 2,
                    //纵轴间距
                    mainAxisSpacing: 0.0,
                    //横轴间距
                    crossAxisSpacing: 0.0,
                    //子组件宽高长度比例
                    childAspectRatio: 1.3),
                children: homeButtonWaste.map((value) {
                  return AnimationGeidView(value);
                }).toList(),
              ),
            )
          ],
        ));
  }
}

List homeButtonWaste = [
  {
    "value": "0",
    "color": Colors.blue,
    "images": Image.network(
      "http://hggard.com/Avatar/954397641",
      fit: BoxFit.cover,
    ),
    "text": "可回收物",
    "texttwo": "RECTYCLABLE WASTE",
  },
  {
    "value": "1",
    "color": Colors.red,
    "images": Image.network(
      "http://hggard.com/Avatar/954397641",
      fit: BoxFit.cover,
    ),
    "text": "有害垃圾",
    "texttwo": "HAZARDOUS WASTE",
  },
  {
    "value": "2",
    "color": Colors.orange,
    "images": Image.network(
      "http://hggard.com/Avatar/954397641",
      fit: BoxFit.cover,
    ),
    "text": "湿垃圾",
    "texttwo": "HOUSEHOLD FOOD WASTE",
  },
  {
    "value": "3",
    "color": Colors.green,
    "images": Image.network(
      "http://hggard.com/Avatar/954397641",
      fit: BoxFit.cover,
    ),
    "text": "干垃圾",
    "texttwo": "RESIDAI WASTE",
  },
];

//// GeidView动画
class AnimationGeidView extends StatefulWidget {
  final nei;
  AnimationGeidView(this.nei);
  @override
  _AnimationGeidViewState createState() => _AnimationGeidViewState();
}

class _AnimationGeidViewState extends State<AnimationGeidView> {
  @override
  Widget build(BuildContext context) {
    return AnimationConfiguration.staggeredGrid(
      columnCount: 1, //周期数
      position: int.parse(widget.nei["value"]),
      duration: Duration(milliseconds: 375),
      child: SlideAnimation(
        duration: Duration(seconds: 1),
        verticalOffset: 50,
        child: FadeInAnimation(
          duration: Duration(seconds: 1),
          child: Stack(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(6),
                child: GestureDetector(
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    child: Container(
                      height: 200,
                      width: 200,
                      child: widget.nei["images"],
                      // decoration: BoxDecoration(
                      //     gradient: LinearGradient(
                      //         begin: Alignment.topLeft,
                      //         end: Alignment.bottomRight,
                      //         colors: [
                      //       widget.nei["color"],
                      //       Colors.white
                      //     ])),
                    ),
                  ),
                  onTap: () {
                    print("点击" + "${widget.nei["text"]}");
                    Navigator.of(context)
                        .push(CustomeRoute(Details(widget.nei["value"])));
                  },
                ),
              ),
              Positioned(
                child: Container(
                  height: 150,
                  width: 210,
                  // color: Colors.pink[100],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        widget.nei["text"],
                        style: TextStyle(
                            color: Colors.pink[300],
                            fontWeight: FontWeight.w600,
                            fontSize: 25),
                      ),
                      Text(
                        widget.nei["texttwo"],
                        style: TextStyle(
                            color: Colors.pink[300],
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
