/*
  5. Construa um programa que leia um número inteiro digitado pelo usuário. 
  Caso o número pertença ao intervalo de 1 a 5, exiba o  número por extenso. 
  Caso o número não pertença a este intervalo, exiba a mensagem "valor invalido".
*/

import 'dart:io';

main (){
  print('Digite um numero: ');
  var numero = int.parse(stdin.readLineSync()!);
  switch (numero){
    case 1: print('hum'); break;
    case 2: print('dois'); break;
    case 3: print('três'); break;
    case 4: print('quatro'); 
    case 5: print('cinco'); break;
    default: print('número inválido.');
  }

}