import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  const TextPage({Key? key}) : super(key: key);

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
        ],
      ),
    );
  }
}
