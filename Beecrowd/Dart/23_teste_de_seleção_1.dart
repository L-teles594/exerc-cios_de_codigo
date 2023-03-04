// Leia 4 valores inteiros A, B, C e D. A seguir, se B for maior do que C e se D for maior do que A, e a soma de C com D for maior que a soma de A e B e se C e D, ambos, forem positivos e se a variável A for par escrever a mensagem "Valores aceitos", senão escrever "Valores nao aceitos".

// Entrada
// Quatro números inteiros A, B, C e D.

// Saída
// Mostre a respectiva mensagem após a validação dos valores.

import 'dart:io';

void main(List<String> args) {
  List i = stdin.readLineSync()!.split(" ").map(int.parse).toList();

  int a = i[0];
  int b = i[1];
  int c = i[2];
  int d = i[3];

  if((b > c) && (d > a) && (c + d) > (a + b) && (c >= 1) && (d >= 1) && (a % 2 == 0)) {
    print("Valores aceitos");
  }else {
    print("Valores nao aceitos");
  }
}