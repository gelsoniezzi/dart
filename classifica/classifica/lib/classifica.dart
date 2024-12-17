class Candidato {

  String nome;
  double pontuacao;
  var tipoClassificacao = [];
  bool wasClassified = false;

  //construtor
  Candidato({
    required this.nome,
    required this.pontuacao,
  });

  factory Candidato.fromJson(Map<String, dynamic> data){
    final nome = data['CANDIDATO'] as String ;
    final pontuacao = double.parse(data['PONTUAÇÃO FINAL']);
    return Candidato(nome: nome, pontuacao: pontuacao,);
  }

  @override
  String toString() {
    // TODO: implement toString
    String saida = "\nNome: $nome, pontuação final: $pontuacao wasClassified: $wasClassified";
    return saida;
  }

  void classificar () {
    wasClassified = true;
  }


}

// Classe para consumir uma lista

