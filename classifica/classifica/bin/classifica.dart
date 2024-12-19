import 'dart:developer';
import 'dart:isolate';

import 'package:classifica/classifica.dart' as classifica;
import 'package:classifica/lista.dart' as lista;
import 'package:classifica/classifica.dart';
import 'dart:convert';

void main(List<String> arguments) {
  // Nessa linha, o JSON de lista.listaCandidatos é decodificado no map listaParsed
  final listaParsed = jsonDecode(lista.listaCandidatos);
  //print('${listaParsed.runtimeType} : $listaParsed');

  // Esse trecho mostra o candidato em segundo lugar na lista "PCD"
  // print(listaParsed["PCD"][1]);

  //aqui eu posso instanciar todos os candidatos
  Candidato primeiro = Candidato(
    nome: 'Gelson',
    pontuacao: 69.8,
  );

  print(primeiro.toString());

  primeiro.classificar();

  // Perceba que o atributo wasClassified foi convertido em true após a execução da função classificar();
  print(primeiro.toString());

  //verificar tamanho da lista

  // Criar lista de candidatos
  // decodificar um json para um map

  // Veja, esse json é um mapa com 3 elementos e o valor de cada elemento é uma lista
  Map<String, dynamic> listaMap = jsonDecode(lista.listaCandidatos);

  // Nesse trecho, é criado uma lista com os elementos da lista [PCD]
  List<dynamic> candidatosJson = listaMap["N"];
  print(listaMap.length);

  /*
  List<Candidato> candidatos = [];
  for (var categoria in listaMap.keys){
    print(listaMap[categoria].length);
    for( int cand = 0; cand < listaMap[categoria].length; cand++){      
        print(listaMap[categoria][cand]['CANDIDATO']);
      
    }
  }
  

  
  List<Candidato> candidatos =  <Candidato>[];
  for (String categoria in listaMap.keys){
    candidatos.addAll(listaMap[categoria].map<Candidato>((json) {
      return Candidato(nome: json['CANDIDATO'], pontuacao: json['PONTUAÇÃO FINAL']);
    }).toList());
  }
  */

  List<Candidato> candidatos = <Candidato>[];
  for (String categoria in listaMap.keys) {
    candidatos.addAll(listaMap[categoria].map<Candidato>((json) {
      classifica.TipoLista tipoClassificacao = classifica.TipoLista.definir;
      print(categoria);
      if (categoria == "AC") {
        print(categoria);
        tipoClassificacao = classifica.TipoLista.amplaConcorrencia;
      } else if (categoria == "N") {
        tipoClassificacao = classifica.TipoLista.negros;
      } else if (categoria == "PCD") {
        tipoClassificacao = classifica.TipoLista.pcd;
      }



      return Candidato(
        nome: json['CANDIDATO'],
        pontuacao: json['PONTUAÇÃO FINAL'],
        tipoClassificacao: [tipoClassificacao],
      );
    }).toList());
  }
  var quantidade = 10;
  List<int> regraN = Regra(inicio: 3, passo:5, tipo: TipoLista.negros).getPosicoes(quantidade);
  List<int> regraPCD = Regra(inicio: 5, passo:10, tipo: TipoLista.pcd).getPosicoes(quantidade);

  List<Candidato> candidatosClaudio = [];
  for(var i = 1; i<= quantidade; i++){
    if(regraN.contains(i)){
      
      candidatosClaudio.add(Candidato(
        nome: listaMap["N"].first['CANDIDATO'],
        pontuacao: listaMap["N"].first['PONTUAÇÃO FINAL'],
        tipoClassificacao: [classifica.TipoLista.negros],
      ));
    }else if (regraPCD.contains(i)){
      candidatosClaudio.add(Candidato(
        nome: listaMap["PCD"].first['CANDIDATO'],
        pontuacao: listaMap["PCD"].first['PONTUAÇÃO FINAL'],
        tipoClassificacao: [classifica.TipoLista.pcd],
      ));
    }else {
      candidatosClaudio.add(Candidato(
        nome: listaMap["AC"].first['CANDIDATO'],
        pontuacao: listaMap["AC"].first['PONTUAÇÃO FINAL'],
        tipoClassificacao: [classifica.TipoLista.amplaConcorrencia],
      ));
    }
  }

  // Para cada elemento do json deve-se criar a lista de candidatos
  //List<dynamic> candidatos = listaMap.map(convert)

  // Converter a lista JSON para uma lista de objetos Candidato

  //O interessante é que essa linha de baixo, utilizando-se do candidatosJson o serviço é realizado.
  /*
  List<Candidato> candidatos = candidatosJson.map<Candidato>( (dynamic json) {
    return Candidato(
      nome: json['CANDIDATO'],
      pontuacao: json['PONTUAÇÃO FINAL'].toDouble(),);      
  }).toList();
  */

  print(candidatosClaudio);
  //print(candidatos[0].tipoClassificacao);

  //Brincadeira de classificação das listas
  /*
    +------------+--------+---------+
    | AC         | N      | PCD     |
    +------------+--------+---------+
    | 1_FULANO   | 5_JOAO | 7_ARTUR |
    | 2_CICRANO  | 6_JOSE | 9_GAMA  |
    | 3_BELTRANO | 7_ARTU |         |
    | 4_FRANCICO | 8_CAIO |         |
    | 5_JOAO     |        |         |
    | 6_JOSE     |        |         |
    | 7_ARTUR    |        |         |
    +------------+--------+---------+
   
  /**
   * AC
   * AC
   * N
   * AC
   * PCD
   * AC
   * AC
   * N
   * AC
   * 
   */
  
  

  // iterar as listas
  //for(int iList = 0; iList < )
  List<ListaCandidatos> listaCandidatos = [];
  for (String tipo in listaMap.keys){
    List<Candidato> candidatos = [];
    for (int iCandidato; iCandidato < listaMap[tipo].length; iCandidato++){
      //aqui é necessario verificar qual a lista. Se for AC, apenas vai fazer o serviço normal

      if(listaMap[tipo].keys == "AC"){
        TipoLista tipoLista = classifica.TipoLista.amplaConcorrencia;
        candidatos = listaMap[tipo].map<Candidato>((json) => {
          return Candidato(
            nome: json[tipo][iCandidato]['CANDIDATO'],
            pontuacao: json[tipo][]
          )
        }).toList();
      }

    }

    //adicionar objeto na lista listaCandidatos
  };
  */
}
