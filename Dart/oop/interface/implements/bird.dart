import '../animals/animals.dart';
import '../animals/flayer.dart';

class Bird extends Animal implements Flayer {
  @override
  get fly => 'I can fly';
}
