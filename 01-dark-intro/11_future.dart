void main() {
  print('Inicio del programa');

  httpGet('https://jadrdev.com').then((value) {
    print(value);
  }).catchError((err) {
    print('Error: $err');
  });

  print('fin del programa');
}

Future<String> httpGet(String url) {
  return Future.delayed(const Duration(seconds: 1), () {
    throw 'Error en la petición http';
  });
}
