Future<String> fetchUserOrder() {
  //想象这是个耗时的数据库操作
  return Future(() => 'Large Latte');
}

void main() {
  fetchUserOrder().then((result) {
    print(result);
  });
  print('Fetching user order!!0');
}

abstract class FutureOr<T> {
  FutureOr._() {
    throw new UnsupportedError("FutureOr can't be instantiated");
  }
}

// Future<String> login(String name, String password) {
//   //登录
// }
//
// Future<User> fetchUserInfo(Stringtoken) {
//   //获取用户信息
// }

// Future saveUserInfo(User user) {
//   //缓存用户信息
// }
//用future这样写
// login('name','password').then((token) =>fetchUserInfo(token)).then((user) =>saveUserInfo(user));
//
// void doLogin() async {
//   String token = await login('name', 'password');
//   //await 必须在 async 函数体内
//   User user = await fetchUserInfo(token);
//   await saveUserInfo(user);
// }
//
//
// void doLogin() async {
//   try {
//     var token = await login('name', 'password');
//     var user = await fetchUserInfo(token);
//     await saveUserInfo(user);
//   } catch (err) {
//     print('Caught error: $err');
//   }
// }
//
// Future<String> getUserInfo() async {
//   return 'aaa';
// }
// //等价于：
// Future<String> getUserInfo() async {
//   return Future.value('aaa');
// }
