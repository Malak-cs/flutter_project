abstract class AbsEmployee {
  String? fName;
  String? lName;
  int? age;
  double? salary;

  // * method
  String get fullName => '$fName $lName';

  void nameClass() {
    print('Employee');
  }

  // * abstract method
  String buildEmployee(String name);
}
