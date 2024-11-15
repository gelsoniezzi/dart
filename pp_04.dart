/*
  Construa um programa que calcule uma equação do 2º grau.
  Crie uma função com retorno para calcular o delta.
  Crie uma função sem retorno para calcular as raízes.
*/

import 'dart:io';
import 'pp_04_functions.dart' as pp4_delta;


void main (){
  print('Este programa calcula o Delta e as raízes de uma equação do segundo grau. f(x) = ax^2 +bx + c');

  print('\Para começar, digite o valor de a: ');
  num a = double.parse(stdin.readLineSync()!);
  print('\nAgora digite o valor de b: ');
  num b = double.parse(stdin.readLineSync()!);
  print('\nPor fim, digite o valor de c: ');
  num c = double.parse(stdin.readLineSync()!);

  print('O delta da função é: ${pp4_delta.calculaDelta(a,b,c)}');

  pp4_delta.calculaRaizes(a, b, c);

}