import 'bird.dart';
import 'duck.dart';

void main() {
  Bird b1 = Bird();
  print(b1.fly);

  Duck d1 = Duck();
  print('Duck ${d1.fly} and ${d1.swim}');
}
