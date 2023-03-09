void main() {
  print(greetEveryone());

  print('Suma: ${addTwoNumber(10, 20)}');

  print('SumaFlecha: ${addTwoNumberFlecha(10, 20)}');

  print('greetPerson: ${greetPerson(name: 'Joshua', message: 'Hi,')}');
}

String greetEveryone() => 'Hello everyone';

int addTwoNumber(int a, int b) {
  return a + b;
}

int addTwoNumberFlecha(int a, int b) => a + b;

int addTwoNumberOptional(int a, [int b = 0]) {
  return a + b;
}

String greetPerson({required String name, String message = 'Hola'}) {
  return '$message $name';
}
