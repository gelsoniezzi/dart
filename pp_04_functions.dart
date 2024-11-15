import 'dart:math';

num calculaDelta(num a, num b, num c){
  num delta = b*b - 4*a*c;
  return delta;
}

void calculaRaizes(num a, num b, num c){
  num delta = calculaDelta(a, b, c);
  num r1 = (-b + sqrt(delta))/2*a;
  num r2 = (-b - sqrt(delta))/2*a;

  print('As raízes da equação de entrada são: ${r1} e ${r2}');
}