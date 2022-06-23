import 'package:flutter/material.dart';

class DragPage extends StatefulWidget {
  const DragPage({Key? key}) : super(key: key);

  @override
  DragPageState createState() => DragPageState();
}

class DragPageState extends State<DragPage>
    with SingleTickerProviderStateMixin {
  double _top = 0.0; //距顶部的偏移
  double _left = 0.0; //距左边的偏移

  double _top1 = 0.0; //单向距左边的偏移

  final double _top2 = 300.0; //距顶部的偏移
  double _width = 100.0; //通过修改图片宽度来达到缩放效果

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: _top,
          left: _left,
          child: GestureDetector(
            child: const CircleAvatar(child: Text("A")),
            //手指按下时会触发此回调
            onPanDown: (DragDownDetails e) {
              //打印手指按下的位置(相对于屏幕)
              print("用户手指按下：${e.globalPosition}");
            },
            //手指滑动时会触发此回调
            onPanUpdate: (DragUpdateDetails e) {
              //用户手指滑动时，更新偏移，重新构建
              setState(() {
                _left += e.delta.dx;
                _top += e.delta.dy;
              });
            },
            onPanEnd: (DragEndDetails e) {
              //打印滑动结束时在x、y轴上的速度
              print(e.velocity);
            },
          ),
        ),
        Positioned(
          top: _top1,
          child: GestureDetector(
            child: const CircleAvatar(child: Text("B")),
            //垂直方向拖动事件
            onVerticalDragUpdate: (DragUpdateDetails details) {
              setState(() {
                _top1 += details.delta.dy;
              });
            },
          ),
        ),
        Positioned(
          top: _top2,
          child: GestureDetector(
            //指定宽度，高度自适应
            child: Image.asset("images/avatar.jpg", width: _width),
            onScaleUpdate: (ScaleUpdateDetails details) {
              setState(() {
                //缩放倍数在0.8到10倍之间
                _width = 100 * details.scale.clamp(.8, 10.0);
              });
            },
          ),
        ),
      ],
    );
  }
}
