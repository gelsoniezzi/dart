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
  Candidato primeiro = Candidato(nome: 'Gelson', pontuacao: 69.8, );

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
  */

  
  List<Candidato> candidatos =  <Candidato>[];
  for (String categoria in listaMap.keys){
    candidatos = candidatos + listaMap[categoria].map<Candidato>((json) {
      return Candidato(nome: json['CANDIDATO'], pontuacao: json['PONTUAÇÃO FINAL']);
    }).toList();
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

  print(candidatos);


  
}
