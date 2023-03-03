// Leia um valor inteiro, que é o tempo de duração em segundos de um determinado evento em uma fábrica, e informe-o expresso no formato horas:minutos:segundos.

// Entrada
// O arquivo de entrada contém um valor inteiro N.

// Saída
// Imprima o tempo lido no arquivo de entrada (segundos), convertido para horas:minutos:segundos, conforme exemplo fornecido.

import 'dart:io';

int tempoSegundos = 0;
void main(List<String> args) {
  tempoSegundos = int.parse(stdin.readLineSync()!);
  int horaEmSegundos = 3600, minutosEmSegundos = 60;

  int hora = decompoeTempo(horaEmSegundos), minutos = decompoeTempo(minutosEmSegundos);

  print("$hora:$minutos:$tempoSegundos"); 
  
}

int decompoeTempo(int decompositor){
  int contador = 0;
  while(tempoSegundos >= decompositor){
    tempoSegundos -= decompositor;
    contador++;
  };
  return contador;
}