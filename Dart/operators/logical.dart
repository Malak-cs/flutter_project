void main() {
  // * Logical (and) ~> &&
  print('Logical AND');
  print('true  && false  = ${true && false}'); // false
  print('true  && true  = ${true && true}'); // true
  print('------------------------');
  // * Logical (OR) ~> ||
  print('Logical OR');
  print('true  || false  = ${true}'); // true
  print('false || false  = ${false || false}'); // false
  print('------------------------');
  // * Logical (Not) !
  print('!true => ${!true}'); //false
  print('!false => ${!false}'); //true
}
