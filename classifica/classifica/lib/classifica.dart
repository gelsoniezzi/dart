// O topo é um bom lugar para colocar os enums?
enum TipoLista {definir, amplaConcorrencia, negros, pcd}

class Candidato {

  String nome;
  double pontuacao;
  List<TipoLista> tipoClassificacao = [];
  bool wasClassified = false;

  //construtor
  Candidato({
    required this.nome,
    required this.pontuacao, 
    this.tipoClassificacao = const[],  
  });

  factory Candidato.fromJson(Map<String, dynamic> data,){
    final nome = data['CANDIDATO'] as String ;
    final pontuacao = double.parse(data['PONTUAÇÃO FINAL']);
    
    return Candidato(nome: nome, pontuacao: pontuacao,);
  }

  @override
  String toString() {
    // TODO: implement toString
    String saida = '''
      ---
      Nome: $nome
      pontuação final: $pontuacao
      wasClassified: $wasClassified
      lista: $tipoClassificacao
      ---''';
    return saida;
  }

  void classificar () {
    wasClassified = true;
  }


}

// Classe para consumir uma lista


//Classe classifica

class Classifica{
  // Nessa classe, é necessário fazer a lógica do consumo da lista
  // Basicamente: o fluxo é o seguinte:
  // 



}

class ListaCandidatos{

  TipoLista tipoLista = TipoLista.definir;
  List<Candidato> candidatos = [];

  ListaCandidatos({required this.tipoLista, required this.candidatos});






  
}

class Regra{
  int inicio;
  int passo;
  
  TipoLista tipo;


  Regra({
    required this.inicio,
    required this.passo,
    required this.tipo,
    });

  List<int> getPosicoes(int quantidade){
    List<int> lista = [];
    for (var i = inicio; i <= quantidade; i+=passo){
      lista.add(i);
    }
    return lista;
  }
}
