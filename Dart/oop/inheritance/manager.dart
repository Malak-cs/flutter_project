import 'emp.dart';

class Manager extends Employee {
  void planing() => print('plan');
  void directing() => print('direct');

  @override
  nameClass() {
    print('Employee');
  }
}
