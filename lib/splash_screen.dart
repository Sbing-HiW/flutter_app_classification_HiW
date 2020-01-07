import 'package:flutter/material.dart';
import 'app_frame.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 3000));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
    _animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => AppFrame()),
            (route) => route == null);
      }
    });

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Image.network(
          "http://qqpublic.qpic.cn/qq_public/0/0-2246992349-D05A35A3942B37F2A4B105C4AEA2A20E/0?fmt=jpeg&size=114&rs=64-64&h=800&w=560&ppv=1",
          // scale: 1.0,
          fit: BoxFit.cover,),
    );
  }
}