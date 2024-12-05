class Jogo{

  String nome = 'sem_nome';
  double preco = 0.0;
  double custo = 0.0;
  int horas = 0;


  //construtores
  Jogo();

  Jogo.comprar(String titulo, double preco){
    nome = titulo;
    preco = preco;
    custo = preco;
    horas = 0;
  }

  void jogar(
    int tempo){
    horas = horas + tempo;
    _calcular();
  }

  void _calcular(){
    if(horas == 0 ){
      custo = preco;
    } else{
      custo = preco/horas;
    }
  }

  // Essa função é inutil, pois poderia ter sido usado o construtor Jogo.comprar()
  void comprar(String titulo, double preco){
    nome = titulo;
    preco = preco;
    horas = 0;
    _calcular();
  }

  
  @override
  String toString(){
    return "Título: $nome\nPreco: $preco\nHoras: $horas\nCusto: $custo.";
  }
}