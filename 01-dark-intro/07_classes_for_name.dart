void main() {
  final Map<String, dynamic> rawJSon = {
    'name': 'Tony Stark',
    'power': 'Money',
    'isAlive': true
  };

  final ironman = Hero.fromJson(rawJSon);

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

  Hero.fromJson(Map<String, dynamic> json)
      : name = json['name'] ?? 'no name found',
        power = json['power'] ?? 'no name found',
        isAlive = json['isAlive'] ?? 'No isAlive found';

  @override
  String toString() {
    return '$name, $power,  ${isAlive ? 'Yes!' : 'Nope'}';
  }
}
