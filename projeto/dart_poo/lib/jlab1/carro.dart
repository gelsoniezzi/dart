class Carro {
  final String modelo;
  String marca;
  String chassi;
  bool estaLigado;

  Carro({
    required this.modelo,
    required this.marca,
    required this.chassi,
    required this.estaLigado,
  });

  void ligar(){
    print("O carro está ligado.");
    estaLigado = true;
  }

  void desligar(){
    print("O carro está desligado.");
    estaLigado = false;
  }

  void buzinar(){
    print('Bii biip.');
  }

  void acelerar(){
    print("O carro está acelerando.");
  }

  void frear(){
    print("O carro está freando.");
  }

  String modeloCarro(){
    return modelo;
  }
}