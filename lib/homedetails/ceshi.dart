import 'package:flutter/material.dart';
import 'package:flutter_app_fenlei/tools.dart';

class Ceshi extends StatefulWidget {
  final ce;
  Ceshi(this.ce);
  @override
  _CeshiState createState() => _CeshiState();
}

class _CeshiState extends State<Ceshi> {
  @override
  Widget build(BuildContext context) {
    print(widget.ce);
    print(CallFunc.instance.neirongshu);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          widget.ce[1]["name"],
        ),
      ),
    );
  }
}
