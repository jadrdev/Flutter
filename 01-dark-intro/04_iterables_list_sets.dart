void main() {
  final numbers = [1, 2, 3, 5, 5, 6, 2, 23, 2, 1, 4, 1, 20];

  print('List original $numbers');
  print('Length ${numbers.length}');
  print('Index 0:  ${numbers[0]}');
  print('First 0:  ${numbers.first}');
  print('First 0:  ${numbers.reversed}');

  final resersedNumbers = numbers.reversed;

  print('Iterable:  $resersedNumbers');
  print('List:  ${resersedNumbers.toList()}');
  print('Set:  ${resersedNumbers.toSet()}');

  final numberGreaterThan5 = numbers.where((int num) {
    return num > 5;
  });

  print('>5:  $numberGreaterThan5');
}
