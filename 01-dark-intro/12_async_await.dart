void main() async {
  print('Inicio del programa');

  try {
    final value = await httpGet('https://jadrdev.com');
    print(value);
  } catch (err) {
    print('Erro de contraseña: $err');
  }

  print('fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));
  throw 'Error en la petición';
}
