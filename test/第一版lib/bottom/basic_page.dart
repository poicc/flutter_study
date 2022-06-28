import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  const BasicPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      child: Wrap(
        spacing: 15, //主轴上子控件的间距
        runSpacing: 15, //交叉轴上子控件之间的间距
        children: [
          Container(
            width: 100,
            height: 40,
            color: Colors.greenAccent,
            alignment: Alignment.center,
            child: GestureDetector(
              child: const Text(
                '图片组件',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              onDoubleTap: () {
                Navigator.pushNamed(context, '/image');
              },
            ),
          ),
          Container(
            width: 100,
            height: 40,
            color: Colors.orange,
            alignment: Alignment.center,
            child: GestureDetector(
              child: const Text(
                '表单组件',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/form');
              },
            ),
          ),
          Container(
            width: 100,
            height: 40,
            color: Colors.blueGrey,
            alignment: Alignment.center,
            child: GestureDetector(
              child: const Text(
                '进度条组件',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              onLongPress: () {
                Navigator.pushNamed(context, '/progress');
              },
            ),
          ),
          ElevatedButton(
            child: const Text('文本组件'),
            onPressed: () {
              Navigator.pushNamed(context, '/text');
            },
          ),
          OutlinedButton(
            child: const Text('按钮组件'),
            onPressed: () {
              Navigator.pushNamed(context, '/button');
            },
          ),
        ],
      ),
    );
  }
}
