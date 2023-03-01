// Leia os quatro valores correspondentes aos eixos x e y de dois pontos quaisquer no plano, p1(x1,y1) e p2(x2,y2) e calcule a distância entre eles, mostrando 4 casas decimais após a vírgula, segundo a fórmula:


// Entrada
// O arquivo de entrada contém duas linhas de dados. A primeira linha contém dois valores de ponto flutuante: x1 y1 e a segunda linha contém dois valores de ponto flutuante x2 y2.

// Saída
// Calcule e imprima o valor da distância segundo a fórmula fornecida, com 4 casas após o ponto decimal.

import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  var linhaX1Y1 = stdin.readLineSync()!.split(" ").map(double.parse).toList();
  var linhaX2Y2 = stdin.readLineSync()!.split(" ").map(double.parse).toList();

  double x1 = linhaX1Y1[0], y1 = linhaX1Y1[1];
  double x2 = linhaX2Y2[0], y2 = linhaX2Y2[1];

  final distancia = sqrt(pow((x2 - x1), 2) + pow((y2 - y1), 2)).toStringAsFixed(4);

  print(distancia);
}