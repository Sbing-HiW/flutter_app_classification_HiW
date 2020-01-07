import 'package:flutter/material.dart';
import 'package:liquid_swipe/Constants/Helpers.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class Weare extends StatefulWidget {
  @override
  _WeareState createState() => _WeareState();
}

class _WeareState extends State<Weare> {
  WaveType currentAnimate = WaveType.liquidReveal;
  void changeAnimate() {
    setState(() {
      if (currentAnimate == WaveType.liquidReveal) {
        currentAnimate = WaveType.circularReveal;
      } else {
        currentAnimate = WaveType.liquidReveal;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.pink[300]),
        title: Text(
          "关于我们",
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
      ),
      body: Container(
        alignment: Alignment.topCenter,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: LiquidSwipe(
          pages: [
            Container(
              color: Colors.teal,
              child: ConstrainedBox(
                // child: FlatButton(
                //   child: Text("切换效果"),
                //   onPressed: () {
                //     changeAnimate();
                //   },
                // ),
                child: Image.network(
                  'https://nijiero-ch.com/wp-content/uploads/2016/01/42b64b8c14534049617519.jpg',
                  fit: BoxFit.cover,
                ),
                constraints: new BoxConstraints.expand(),
              ),
            ),
            Container(
              color: Colors.teal,
              child: ConstrainedBox(
                child: Image.network(
                  'https://e-shuushuu.net/images/2018-01-30-947896.jpeg',
                  fit: BoxFit.cover,
                ),
                constraints: new BoxConstraints.expand(),
              ),
            ),
            Container(
              color: Colors.teal,
              child: ConstrainedBox(
                child: Image.network(
                  'https://static4.aniimg.com/upload/20180528/5551/o/d/E/p=700/odElEF.jpg',
                  fit: BoxFit.cover,
                ),
                constraints: new BoxConstraints.expand(),
              ),
            ),
          ],
          fullTransitionValue: 300, //滑动阀值
          enableSlideIcon: true, //显示右侧图标
          enableLoop: true, //循环切换
          slideIconWidget: Icon(Icons.arrow_back,color: Colors.white38,size: 40,),
          positionSlideIcon: 0.8, //右侧图标的位置
          waveType: currentAnimate, //切换效果
          onPageChangeCallback: (page) => pageChangeCallback(page), //页面切换回调
          currentUpdateTypeCallback: (updateType) => //当前页面更新回调
              updateTypeCallback(updateType),
        ),
      ),
    );
  }

  pageChangeCallback(int page) {
    // print(page);
  }

  updateTypeCallback(UpdateType updateType) {
    // print(updateType);
  }
}
