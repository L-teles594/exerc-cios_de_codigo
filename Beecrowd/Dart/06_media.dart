import 'dart:io';

void main(List<String> args) {
  double nota1 = double.parse(stdin.readLineSync()!) * 3.5;
  double nota2 = double.parse(stdin.readLineSync()!) * 7.5;

  final media = ((nota1 + nota2) / 11).toStringAsFixed(5);

  print("MEDIA = $media");
}