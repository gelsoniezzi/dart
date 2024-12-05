import 'package:dart_poo/e1_imc/imc.dart';
import 'package:test/test.dart';
import 'dart:math';

void main(){

  Imc imc1 = Imc(altura: 161, nome: "Gelson", peso: 78);

  test('calculaImc', () {
    expect(imc1.calculaImc(), 78/(pow(161,2)/10000));
  });
}