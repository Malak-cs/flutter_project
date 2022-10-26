class Car {
  // * properties
  String? color;
  String? model;
  int? year;
  double? price;
  // * default Constructor
  // Car();
  // * Constructor
  Car({this.color, this.model, required this.price, this.year});
  // * Constructor Name
  Car.sport({this.color = 'black', this.price = 100000});
  // * Method
  void start() => print('start');
  void drive() => print('drive');
  void park() => print('park');
  // * get Properties
  // String == String? false
  // String? == String? true
  String? get getColor => color;
  String get getModel => model ?? '';
  int? get getYear => year;
  double? get getPrice => price;
  // * set Properties
  set setColor(String newColor) => color = newColor;
  set setModel(String model) => this.model = model;
  set setYear(int year) => this.year = year;
  set setPrice(double price) => this.price = price;
  @override
  String toString() {
    return 'Car(color: $color, model: $model, year: $year, price: $price)';
  }
}
