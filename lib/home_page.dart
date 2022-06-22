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
        children: <Widget>[
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
      ),
    );
  }
}
