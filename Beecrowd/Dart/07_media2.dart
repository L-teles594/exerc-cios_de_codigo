import 'dart:io';

void main(List<String> args) {
  double nota1 = double.parse(stdin.readLineSync()!) * 2;
  double nota2 = double.parse(stdin.readLineSync()!) * 3;
  double nota3 = double.parse(stdin.readLineSync()!) * 5;

  final media = ((nota1 + nota2 + nota3) / 10).toStringAsFixed(1);

  print("MEDIA = $media");
}