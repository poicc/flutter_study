// import 'my_data.dart' show getAge(); 只导入需要的部分
// import 'my_data.dart' hide getName();
import 'my_data.dart';
import 'person.dart';

void main() {
  Person p1 = Person('mth', 22);
  p1.printInfo();

  getName();
  getAge();
  getSex();
}

