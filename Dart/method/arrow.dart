void main() {
  void myInfo({String fName = ''}) => print('Name: $fName');
  myInfo(fName: 'Malak');
  void sayHello(String firstName) => print('Hello: $firstName');
  sayHello('Malak');
  // return
  double sum(double x1, double x2) => x1 + x2;
  print(sum(34.4, 4));
}
