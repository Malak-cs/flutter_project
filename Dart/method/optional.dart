void main() {
  myInfo(String fName, String lName, [int age = 22]) {
    print('full name: $fName $lName age: $age');
  }

  myInfo('Malak', 'Alazzeh');
  myInfo1([String? fName1, String? mName1, String? lName1, int age1 = 22]) {
    print('Full Name: $fName1 $mName1 $lName1 age: $age1');
  }

  myInfo1('malak');
  myInfo2(
      {required int id,
      String? fName1,
      String? mName1,
      String? lName1,
      int age1 = 22}) {
    print('ID: $id Name: $fName1 $mName1 $lName1 age: $age1');
  }

  myInfo2(id: 144);
}
