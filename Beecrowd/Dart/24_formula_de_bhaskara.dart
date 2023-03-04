// Leia 3 valores de ponto flutuante e efetue o cálculo das raízes da equação de Bhaskara. Se não for possível calcular as raízes, mostre a mensagem correspondente “Impossivel calcular”, caso haja uma divisão por 0 ou raiz de numero negativo.

// Entrada
// Leia três valores de ponto flutuante (double) A, B e C.

// Saída
// Se não houver possibilidade de calcular as raízes, apresente a mensagem "Impossivel calcular". Caso contrário, imprima o resultado das raízes com 5 dígitos após o ponto, com uma mensagem correspondente conforme exemplo abaixo. Imprima sempre o final de linha após cada mensagem.

import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  List i = stdin.readLineSync()!.split(" ").map(double.parse).toList();

  formulaBhaskara(i[0], i[1], i[2]);


}

void formulaBhaskara(double a, b, c){
  double delta = pow(b, 2) - (4 * a * c);

  if(a == 0.0 || delta < 0.0) {
    print('Impossivel calcular');
  }else {
    double x1 = ((b * -1) + sqrt(delta)) / (2 * a);
    double x2 = ((b * -1) - sqrt(delta)) / (2 * a);

    print("R1 = ${x1.toStringAsFixed(5)}");
    print("R2 = ${x2.toStringAsFixed(5)}");
  }
  
}

