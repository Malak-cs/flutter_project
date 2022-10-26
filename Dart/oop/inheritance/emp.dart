class Employee {
  String? fName;
  String? lName;
  String? gender;
  int? age;
  double? salary;
  //method
  String get fullName => '$fName $lName';
  void nameClass() {
    print('Employee');
  }
}
