void main() {
  final Map<String, dynamic> rawJSon = {
    'name': 'Tony Stark',
    'power': 'Money',
    'isAlive': true
  };

  //final ironman = Hero (
  //  isAlive: rawJSon['isAlive2'] ?? false,
  //  power: 'Money',
  //  name: 'Tony Stark'
  // );

  print(ironman);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({
    required this.name,
    required this.power,
    required this.isAlive,
  });

  @override
  String toString() {
    return '$name, $power ${isAlive ? 'Yes!' : 'Nope'}';
  }
}
