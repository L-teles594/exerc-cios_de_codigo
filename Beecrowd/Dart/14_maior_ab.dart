import 'dart:io';

void main(List<String> args) {
  var linhaEntrada = stdin.readLineSync()!.split(" ").map(int.parse).toList();

  num maiorParcial = maiorAB(linhaEntrada[0], linhaEntrada[1]);
  num maiorFinal = maiorAB(maiorParcial, linhaEntrada[2]);

  print("${maiorFinal.toStringAsFixed(0)} eh o maior");

}

num maiorAB(a, b) {
  return ((a + b + (a - b).abs())  / 2);
}