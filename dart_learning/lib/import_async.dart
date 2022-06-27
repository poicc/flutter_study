// 懒加载
import 'package:dart_learning/deferred/hello.dart' deferred as hello;
// 当需要使用的时候，需要使⽤loadLibrary()⽅法来加载：
greet() async {
  await hello.loadLibrary();
  hello.printGreeting();
}
