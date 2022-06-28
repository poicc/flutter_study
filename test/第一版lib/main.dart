import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_demo/bottom/index.dart';
import 'package:flutter_demo/page/container_widget.dart';
import 'package:flutter_demo/page/image_widget.dart';
import 'package:flutter_demo/page/plant_shop.dart';
import 'package:flutter_demo/page/text_widget.dart';

void main() {
  runApp(const MyApp());

  if (Platform.isAndroid) {
    // 以下两行 设置android状态栏为透明的沉浸。写在组件渲染之后，是为了在渲染后进行set赋值，覆盖状态栏，写在渲染之前MaterialApp组件会覆盖掉这个值。
    SystemUiOverlayStyle systemUiOverlayStyle =
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: {
        '/index': (context) => const Index(),
        '/text': (context) => const TextWidget(),
        '/container': (context) => const ContainerWidget(),
        '/image': (context) => const ImageWidget(),
        '/plant-shop': (context) => const PlantShop(),
      },
      initialRoute: '/',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const Index(),
    );
  }
}
