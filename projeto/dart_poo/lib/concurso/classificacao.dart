class Candidato {
  String? nome;
  int? classificacao;
  //var lista = []; // AC = 1; N = 2;  PCD = 3
  var tipoLista = <String>{}; //"ac", "negro", "pcd"
  double? notaFinal;
  bool wasClassified = false;

  Candidato({
    required this.nome,
    required this.classificacao,
    required this.tipoLista,
    required this.notaFinal,
  });
}

class Classificacao {
  Candidato candidatoList = [];

  

}

// Classe para consumir o JSON

class consumir json