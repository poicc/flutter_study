import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({Key? key}) : super(key: key);

  @override
  FormWidgetState createState() => FormWidgetState();
}

class FormWidgetState extends State<FormWidget> {
  FocusNode focusNode1 = FocusNode();
  FocusNode focusNode2 = FocusNode();
  FocusScopeNode? focusScopeNode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("表单组件"),
        ),
        body: _formBody(context));
  }

  Widget _formBody(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          autofocus: true,
          focusNode: focusNode1, //关联focusNode1
          decoration: const InputDecoration(labelText: "input1"),
        ),
        TextField(
          focusNode: focusNode2, //关联focusNode2
          decoration: const InputDecoration(labelText: "input2"),
        ),
        const TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              labelText: "Email",
              hintText: "电子邮件地址",
              prefixIcon: Icon(Icons.email),
              border: InputBorder.none //隐藏下划线
              ),
        ),
        Builder(
          builder: (ctx) {
            return Column(
              children: <Widget>[
                ElevatedButton(
                  child: const Text("移动焦点"),
                  onPressed: () {
                    //将焦点从第一个TextField移到第二个TextField
                    // 这是一种写法 FocusScope.of(context).requestFocus(focusNode2);
                    // 这是第二种写法
                    // if(null == focusScopeNode)
                    focusScopeNode ??= FocusScope.of(context);
                    focusScopeNode?.requestFocus(focusNode2);
                  },
                ),
                ElevatedButton(
                  child: const Text("隐藏键盘"),
                  onPressed: () {
                    // 当所有编辑框都失去焦点时键盘就会收起
                    focusNode1.unfocus();
                    focusNode2.unfocus();
                  },
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
