import 'package:classifica/classifica.dart';


void main(){
  Regra regraN = Regra(inicio: 3, passo:5, tipo: TipoLista.negros);
  Regra regraPCD = Regra(inicio: 5, passo:10, tipo: TipoLista.pcd);

  print(regraN.getPosicoes(100));
  print(regraPCD.getPosicoes(100));
}