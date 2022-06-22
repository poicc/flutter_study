import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("基础组件"),
      ),
      body: _buildBody(context),
    );
  }

  Center _buildBody(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[_progressWidget(context)],
      ),
    );
  }

  Widget _demoWidget(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Hello world",
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 32,
            color: Colors.orange,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "这是一段可重复的文字. " * 4,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.green,
          ),
        ),
        const Text(
          "可以放大的文字",
          textScaleFactor: 1.8,
        ),
        ElevatedButton(
          child: const Text("点击弹出提示框"),
          onPressed: () {
            showDialog<void>(
              context: context,
              barrierDismissible: false,
              builder: (BuildContext dialogContext) {
                return AlertDialog(
                  title: const Text('提示'),
                  content: const Text('这是一个提示框'),
                  actions: <Widget>[
                    OutlinedButton(
                      child: const Text('确定'),
                      onPressed: () {
                        Navigator.of(dialogContext).pop();
                      },
                    ),
                  ],
                );
              },
            );
          },
        ),
        OutlinedButton(
          child: const Text('边框按钮'),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.thumb_up),
          color: Colors.red,
          onPressed: () {},
        ),
        ElevatedButton.icon(
          icon: const Icon(Icons.send),
          label: const Text('发送'),
          onPressed: () {},
        ),
        const Image(
          image: AssetImage("images/avatar.jpg"),
          width: 100.0,
        )
      ],
    );
  }

  Widget _imageWidget(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "images/avatar.jpg",
          width: 100.0,
          color: Colors.blue,
          colorBlendMode: BlendMode.difference,
        ),
        const Image(
          image: AssetImage("images/avatar.jpg"),
          width: 100.0,
          height: 200.0,
          repeat: ImageRepeat.repeatY,
        ),
        const Image(
          image: NetworkImage(
              "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4"),
          width: 100.0,
        ),
        Image.network(
          "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4",
          width: 100.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Icon(Icons.accessible, color: Colors.green),
            Icon(Icons.error, color: Colors.green),
            Icon(Icons.fingerprint, color: Colors.green),
          ],
        )
      ],
    );
  }

  Widget _progressWidget(BuildContext context) {
    return Column(
      children: [
        // 模糊进度条(会执行一个动画)
        LinearProgressIndicator(
          backgroundColor: Colors.grey[200],
          valueColor: const AlwaysStoppedAnimation(Colors.blue),
        ),
        //进度条显示50%
        LinearProgressIndicator(
          backgroundColor: Colors.grey[200],
          valueColor: const AlwaysStoppedAnimation(Colors.blue),
          value: .5,
        ),
        // 模糊进度条(会执行一个旋转动画)
        CircularProgressIndicator(
          backgroundColor: Colors.grey[200],
          valueColor: const AlwaysStoppedAnimation(Colors.blue),
        ),
        // 进度条显示50%，会显示一个半圆
        CircularProgressIndicator(
          backgroundColor: Colors.grey[200],
          valueColor: const AlwaysStoppedAnimation(Colors.blue),
          value: .5,
        ),
        // 线性进度条高度指定为3
        SizedBox(
          height: 3,
          child: LinearProgressIndicator(
            backgroundColor: Colors.grey[200],
            valueColor: const AlwaysStoppedAnimation(Colors.blue),
            value: .5,
          ),
        ),
        // 圆形进度条直径指定为100
        SizedBox(
          height: 100,
          width: 100,
          child: CircularProgressIndicator(
            backgroundColor: Colors.grey[200],
            valueColor: const AlwaysStoppedAnimation(Colors.blue),
            value: .7,
          ),
        ),
      ],
    );
  }
}
