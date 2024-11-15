/**
 * 
 * Construa um programa que leia do usuário um número inicial e um número final. 
 * Em seguida, exiba na tela uma sequencia com os números desse intervalo informado pelo usuário. 
 * Exemplo: caso o usuário entre com os números 4 e 10, o resultado do programa seria: 4 5 6 7 8 9 10
 * 
 */

import 'dart:io';

void main(){
  print('Este programa exibe os números inteiros entre dois números informados pelo usuário.');

  print("Digite o menor número: ");
  var inicio = int.parse(stdin.readLineSync()!);
  print("Digite o número final: ");
  var fim = int.parse(stdin.readLineSync()!);

  print('\nQuestão 6-a');
  var i = inicio;
  while(i <= fim) {
    stdout.write('${i} '); 
    i++;
  }
  i = inicio;
  print('\n\nQuestão 6-b');
  do{
    stdout.write('${i} '); i++;
  }while (i <=fim);

  print('\n\nQuestão 6-c');
  for ( var i = inicio; i <= fim; i++ ) stdout.write('${i} ');


}