void main() {
  for (int i = 1; i <= 10; i++) {
    print('i : $i, Malak');
  }
  List l1 = [1, 5, 'Malak'];
  print('l1 : $l1');
  // * List For
  for (int i = 0; i < l1.length; i++) {
    print(l1[i]);
  }
// for in
  print('-------------------------------');
  for (var item in l1) {
    print(item);
  }
  // forEach
  print('-------------------------------');
  l1.forEach((item) {
    print(item);
  });
}
