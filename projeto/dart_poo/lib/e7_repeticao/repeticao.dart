/**
   * Construa um programa que leia do usuário um número inicial e um número final. Em seguida, exiba na tela uma sequencia
  apenas com os números ímpares dentro deste intervalo informado pelo usuário. Exemplo: caso o usuário entre com os números 4
  e 10, o resultado seria: 5 7 9
  a) Construa este programa utilizando a estrutura while.
  b) Construa este programa utilizando a estrutura do-while.
  c) Construa este programa utilizando a estrutura for.
 */

class Repetir{

  int nInicial;
  int nFinal;

  Repetir({required this.nInicial, required this.nFinal});

  String funcaoWhile (){
    String saida = 'oi';
    int i = this.nInicial;
    int f = this.nFinal;
    while (i < f){
      if( i % 2 != 0) saida = saida + i.toString() + ' ';
      i++;
    }
    return saida;
  }

  String funcaoDoWhile(){
    
    return saida;
  }

}