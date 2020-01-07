import 'package:flutter/material.dart';
// import 'package:flutter_app_fenlei/customeroute.dart';
import 'retrieve_one.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter_app_fenlei/tools.dart';

class Details extends StatefulWidget {
  final value;
  Details(this.value);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> with SingleTickerProviderStateMixin {
  TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this);
    _controller.index = int.parse(widget.value) ?? int.parse(widget.value);
  }

  void changeIndex(index) {
    print("123");
    _controller.index = index;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    CallFunc.instance.funcint = changeIndex; //改变index
    return Scaffold(
      backgroundColor: Colors.pink[200],
      appBar: AppBar(
        backgroundColor: Colors.pink[200],
        title: Text(
          "分类",
          style: TextStyle(
              fontSize: 30,
              color: Colors.pink[400],
              fontWeight: FontWeight.w600),
        ),
        bottom: TabBar(
          controller: _controller,
          indicatorColor: Colors.white54,
          labelColor: Colors.pink[400],
          unselectedLabelColor: Colors.pink[100],
          indicatorSize: TabBarIndicatorSize.label,
          tabs: <Widget>[
            Tab(
              child: Text(
                "可回收物",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
            Tab(
              child: Text(
                "有害垃圾",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
            Tab(
              child: Text(
                "湿垃圾",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
            Tab(
              child: Text(
                "干垃圾",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: f.map((value) {
          return RetrieveOne(value);
        }).toList(),
      ),
      // Container(child: Text(widget.text)),
      floatingActionButton: SpeedDial(
        marginRight: 25, //右边距
        marginBottom: 50, //下边距
        animatedIcon: AnimatedIcons.menu_close, //带动画的按钮
        animatedIconTheme: IconThemeData(size: 22.0),
        // visible: isShow,//是否显示按钮
        closeManually: false, //是否在点击子按钮后关闭展开项
        curve: Curves.easeInToLinear, //展开动画曲线
        overlayColor: Colors.black, //遮罩层颜色
        overlayOpacity: 0.4, //遮罩层透明度
        // onOpen: () => print('OPENING DIAL'), //展开回调
        // onClose: () => print('DIAL CLOSED'), //关闭回调
        // tooltip: 'Speed Dial', //长按提示文字
        // heroTag: 'speed-dial-hero-tag', //hero标记
        backgroundColor: Colors.pink[300], //按钮背景色
        foregroundColor: Colors.pink[100], //按钮前景色/文字色
        elevation: 8.0, //阴影
        shape: CircleBorder(), //shape修饰
        children: [
          SpeedDialChild(
            label: "可回收物",
            labelBackgroundColor: Colors.pink[200],
            labelStyle: TextStyle(color: Colors.white),
            child: Icon(Icons.looks_one),
            backgroundColor: Colors.pink[200],
            onTap: () => changeIndex(0),
          ),
          SpeedDialChild(
            label: "有害垃圾",
            labelBackgroundColor: Colors.pink[200],
            labelStyle: TextStyle(color: Colors.white),
            child: Icon(Icons.looks_two),
            backgroundColor: Colors.pink[200],
            onTap: () => CallFunc.instance.funcint(1),
          ),
          SpeedDialChild(
            label: "湿垃圾",
            labelBackgroundColor: Colors.pink[200],
            labelStyle: TextStyle(color: Colors.white),
            child: Icon(Icons.looks_3),
            backgroundColor: Colors.pink[200],
            onTap: () => CallFunc.instance.funcint(2),
          ),
          SpeedDialChild(
            label: "干垃圾",
            labelBackgroundColor: Colors.pink[200],
            labelStyle: TextStyle(color: Colors.white),
            child: Icon(Icons.looks_4),
            backgroundColor: Colors.pink[200],
            onTap: () => changeIndex(3),
          ),
        ],
      ),
    );
  }
}

List f = [
  {
    "value": 0,
    "retrieve": "可回收物",
    "l1": "玻璃类",
    "l2": "织物类",
    "l3": "金属类",
    "l4": "塑料类",
    "js1": "适宜回收利用和资源化利用的",
    "js2": "-轻投轻放\n-清洁干燥,避免污染\n-废纸尽量平整\n-立体包装请清空内容物,清洁后压扁投放\n-有尖锐边角的,应包裹后投放",
    "js3": "酱油瓶,玻璃杯,平板玻璃,易拉罐,饮料瓶,洗发水瓶,塑料玩具,书本,报纸,广告单,纸板箱,衣服,床上用品等",
  },
  {
    "value": 1,
    "retrieve": "有害垃圾",
    "l1": "废电池",
    "l2": "废旧灯泡",
    "l3": "过期药品",
    "l4": "过期化妆品",
    "js1": "对人体健康或者自然环境造成直接或潜在危害的废弃物",
    "js2": "-投放时请注意轻放\n-已破损的请连带包装或包裹后轻放\n-如易挥发,轻密封后投放",
    "js3": "废电池,油漆桶,荧光灯管,废药品及包装物等",
  },
  {
    "value": 2,
    "retrieve": "湿垃圾",
    "l1": "剩饭剩菜",
    "l2": "鱼骨",
    "l3": "果皮",
    "l4": "花卉绿植",
    "js1": "日常生活垃圾产生的容易腐烂的生物",
    "js2":
        "-纯流质的食物垃圾,如牛奶等应直接倒进下水道\n-有包装物的湿垃圾应将包装物去除\n-分类投放后,包装物请投放到对应的可回收物或干垃圾容器",
    "js3": "剩饭剩菜,瓜皮果核,花卉绿植,过期食品",
  },
  {
    "value": 3,
    "retrieve": "干垃圾",
    "l1": "烟蒂",
    "l2": "纸巾",
    "l3": "贝壳",
    "l4": "陶瓷",
    "js1": "除有害垃圾,可回收物,湿垃圾以外的其他生活废弃物",
    "js2": "-尽量沥干水分\n-难以辨识类别的生活垃圾投入干垃圾容器内",
    "js3": "餐盒,餐巾纸,湿垃圾,卫生间用纸,塑料袋视频包装袋,污染严重的纸,烟蒂,纸尿裤,一次性杯子,大骨头,贝壳,花盆,陶瓷等",
  },
];
