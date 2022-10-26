import '../animals/animals.dart';
import '../animals/Flayer.dart';
import '../animals/swimmer.dart';

class Duck extends Animal implements Flayer, Swimmer {
  @override
  get fly => 'I can fly';

  @override
  get swim => 'I can Swim';
}
