void main() {
  List l1 = ['Malak', 10, 15.5, false];
  List<String> names = ['Malak', 'Muneer', 'Alazzeh'];
  // * print List
  print(l1);
  print(names);
  // * print Value
  print('l1 : ${l1.first}');
  print('l1 : ${l1.last}');
  print('l1 : ${l1[3]}');
  print('l1 : ${l1.elementAt(2)}');
  // * list length
  print('L1 : ${l1.length}');
  //  * list reversed
  print('L1 : ${l1.reversed}');
// * ADD Value
  l1.add(50);
  print('L1 : $l1');
  l1.insert(2, true);
  print('L1 : $l1');
  if (l1.isNotEmpty) {
    print('is not Empty');
  }
  l1.clear();
  if (l1.isEmpty) {
    print('is  Empty');
  }
}
