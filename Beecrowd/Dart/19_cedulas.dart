// Leia um valor inteiro. A seguir, calcule o menor número de notas possíveis (cédulas) no qual o valor pode ser decomposto. As notas consideradas são de 100, 50, 20, 10, 5, 2 e 1. A seguir mostre o valor lido e a relação de notas necessárias.

// Entrada
// O arquivo de entrada contém um valor inteiro N (0 < N < 1000000).

// Saída
// Imprima o valor lido e, em seguida, a quantidade mínima de notas de cada tipo necessárias, conforme o exemplo fornecido. Não esqueça de imprimir o fim de linha após cada linha, caso contrário seu programa apresentará a mensagem: “Presentation Error”.

import 'dart:io';

void main(List<String> args) {
  int saque = int.parse(stdin.readLineSync()!);

  List notas = [100, 50, 20, 10, 5, 2, 1];

  // Map notasSacadas ={
  //   '100': 0,
  //   '50': 0,
  //   '20': 0,
  //   '10': 0,
  //   '5': 0,
  //   '2': 0,
  //   '1': 0,
  // };
  // Esse map seria usado caso precisasse armazenar as quantidades de notas
  print(saque);
  for(int nota in notas){
    int contador = 0;
    while(saque >= nota){
      saque -= nota;
      contador ++;
    }
    print("$contador nota(s) de R\$ ${nota.toStringAsFixed(2).replaceAll(".", ",")}");
  }
}