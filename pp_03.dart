/*
  3. Construa um programa que calcule para o aluno sua média parcial e informe sua situação parcial 
  (Aprovado, Recuperação ou Reprovado). 
  Caso ele esteja em Recuperação, calcule quanto ele precisa tirar na 4ª prova para ser aprovado (média final maior ou
  igual que 5,0). 
  Observação: utilize os pesos e regras da UFERSA.
*/


import 'dart:io';
import 'dart:math';

main(){

  print('Este programa calcula a média de um estudante da UFERSA.');
  print('Digite a nota da primeira unidade (N1): ');
  num n1 = double.parse(stdin.readLineSync()!);

  print('Digite a nota da segunda unidade (N2): ');
  num n2 = double.parse(stdin.readLineSync()!);

  print('Digite a nota da terceira unidade (N3): ');
  num n3 = double.parse(stdin.readLineSync()!);

  num media = (n1+n2+n3)/3;

  if (media >= 3.5 && media < 7){
    print('Você está em recuperação.');
    num avaliacao_final = (5 * 10 - 6 * media ) / 4;
    print('Na avaliação final você precisa de ${avaliacao_final} para passar com média 5.');
  }else if (media >= 7){
    print('Parabéns, você foi aprovado por média.');
  }else{
    print('Lamentamos, tente outra vez. Reprovado.');
  }
}