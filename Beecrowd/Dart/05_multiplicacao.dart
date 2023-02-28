import 'dart:io';

void main(List<String> args) {
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);

  int produto = a * b;

  print("PROD = $produto");
}