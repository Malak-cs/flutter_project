void main() {
  // scoping
  int x = 10; // global
  void f1() {
    x = 50;
    int y = 10; //local
    print('y: $y');
  }

  print('x: $x'); // 10
  f1();
  print('x: $x'); //50
}
