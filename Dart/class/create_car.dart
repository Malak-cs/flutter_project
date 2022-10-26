import 'car.dart';

void main() {
  // * car one
  Car car1 = new Car(color: 'red', price: 50000);
  // * car tow
  Car car2 = Car.sport();

  // * get * set properties
  // * Method one
  car1.color = 'red';
  print(car1.color);

  // * Method two
  car1.setColor = 'blue';
  print(car1.getColor);

  // * print Object
  print(car1);
  print(car2);

  // * Method
  car1.start();
  car1.drive();
  car1.park();

  // *  Cascade Notation
  car1
    ..start()
    ..drive()
    ..park()
    ..price = 50.50;

  print(car1);
}
