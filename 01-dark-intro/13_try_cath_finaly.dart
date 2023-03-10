void main() async {
  print('Inicio del programa');

  try {
    final value = await httpGet('https://jadrdev.com');
    print('Exito: $value');
  } on Exception catch (err) {
    print('Tenemos una expection: $err');
  } catch (err) {
    print('Opp!! Error de contraseña: $err');
  } finally {
    print('Fin del try y cathc');
  }

  print('fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));
  throw Exception('No hay parametros en la url');
}
