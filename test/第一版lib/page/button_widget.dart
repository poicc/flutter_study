import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('按钮组件'),
      ),
      body: Container(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[
            ElevatedButton(
              child: const Text("normal"),
              onPressed: () {},
            ),
            TextButton(
              child: const Text("normal"),
              onPressed: () {},
            ),
            OutlinedButton(
              child: const Text("normal"),
              onPressed: () {},
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.send),
              label: const Text("发送"),
              onPressed: () {},
            ),
            OutlinedButton.icon(
              icon: const Icon(Icons.add),
              label: const Text("添加"),
              onPressed: () {},
            ),
            TextButton.icon(
              icon: const Icon(Icons.info),
              label: const Text("详情"),
              onPressed: () {},
            ),
            Switch(
              value: true, //当前状态
              onChanged: (value) {
                //重新构建页面
                // setState(() {
                //   _switchSelected = value;
                // });
              },
            ),
            Checkbox(
              value: true,
              activeColor: Colors.red, //选中时的颜色
              onChanged: (value) {
                // setState(() {
                //   _checkboxSelected = value!;
                // });
              },
            ),
          ],
        ),
      ),
    );
  }
}
