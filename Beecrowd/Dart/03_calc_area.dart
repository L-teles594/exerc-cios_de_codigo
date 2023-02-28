import 'dart:io';

void main(List<String> args) {
  double raio = double.parse(stdin.readLineSync()!);
  const PI = 3.14159;

  final area = (raio * raio * PI).toStringAsFixed(4);
  print('A=$area');
}