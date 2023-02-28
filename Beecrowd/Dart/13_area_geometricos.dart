// Escreva um programa que leia três valores com ponto flutuante de dupla precisão: A, B e C. Em seguida, calcule e mostre:
// a) a área do triângulo retângulo que tem A por base e C por altura.
// b) a área do círculo de raio C. (pi = 3.14159)
// c) a área do trapézio que tem A e B por bases e C por altura.
// d) a área do quadrado que tem lado B.
// e) a área do retângulo que tem lados A e B.
// Entrada
// O arquivo de entrada contém três valores com um dígito após o ponto decimal.

// Saída
// O arquivo de saída deverá conter 5 linhas de dados. Cada linha corresponde a uma das áreas descritas acima, sempre com mensagem correspondente e um espaço entre os dois pontos e o valor. O valor calculado deve ser apresentado com 3 dígitos após o ponto decimal.

import 'dart:io';

void main(List<String> args) {
  const PI = 3.14159;
  var linhaDeEntrada = stdin.readLineSync()!.split(" ").map(double.parse).toList();

  final areaTriangulo = ((linhaDeEntrada[0] * linhaDeEntrada[2] / 2)).toStringAsFixed(3);
  final areaCirculo = (PI * linhaDeEntrada[2] * linhaDeEntrada[2]).toStringAsFixed(3);
  final areaTrapezio = (( (linhaDeEntrada[0] + linhaDeEntrada[1]) / 2 ) * linhaDeEntrada[2]).toStringAsFixed(3);
  final areaQuadrado = (linhaDeEntrada[1] * linhaDeEntrada[1]).toStringAsFixed(3);
  final areaRetangulo = (linhaDeEntrada[0] * linhaDeEntrada[1]).toStringAsFixed(3);

  print("TRIANGULO: $areaTriangulo");
  print("CIRCULO: $areaCirculo");
  print("TRAPEZIO: $areaTrapezio");
  print("QUADRADO: $areaQuadrado");
  print("RETANGULO: $areaRetangulo");
}
