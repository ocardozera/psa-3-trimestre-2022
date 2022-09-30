import '../dados/dados_carro.dart';
import '../erro/cnh_invalida.dart';
import '../erro/idade_nao_permitida.dart';
import '../erro/km_maxima_atingida.dart';
import '../dados/tipo_combustivel.dart';

class Carro {
  late String modelo;
  late double valorBaseLocacao;
  late int quilometragem;
  late int anoFabricacao;
  late int anoModelo;
  late String placa;
  late int renavam;
  late String chassis;
  late String categoria; //passeio, utilitario, camionete, suv, crossover
  late TipoCombustivel tipoCombustivel;
  late int potenciaCv;
  late bool disponivel;

  Carro(
      {required this.modelo,
      required this.valorBaseLocacao,
      required this.quilometragem,
      required this.anoFabricacao,
      required this.anoModelo,
      required this.placa,
      required this.renavam,
      required this.chassis,
      required this.categoria,
      required this.tipoCombustivel,
      required this.potenciaCv,
      required this.disponivel});

  Carro.cadastrar(DadosCarro dadosCarro) {
    var modelo = dadosCarro.modelo;
    var valorBaseLocacao = dadosCarro.valorBaseLocacao;
    var quilometragem = dadosCarro.quilometragem;
    var anoFabricacao = dadosCarro.anoFabricacao;
    var anoModelo = dadosCarro.anoFabricacao;
    var placa = dadosCarro.placa;
    var renavam = dadosCarro.renavam;
    var chassis = dadosCarro.chassis;
    var categoria = dadosCarro.categoria;
    var tipoCombustivel = dadosCarro.tipoCombustivel;
    var potenciaCv = dadosCarro.potenciaCv;
    var disponivel = dadosCarro.disponivel;

    if (validaKmMaxima()) {
      throw KmMaximaAtingida();
    }

    this.modelo = modelo;
    this.quilometragem = quilometragem;
    this.anoFabricacao = anoFabricacao;
    this.anoModelo = anoModelo;
    this.placa = placa;
    this.renavam = renavam;
    this.chassis = chassis;
    this.categoria = categoria;
    this.tipoCombustivel = tipoCombustivel;
    this.potenciaCv = potenciaCv;
    this.disponivel = disponivel;
  }

  bool validaKmMaxima() {
    if (quilometragem >= 100000) {
      return true;
    }
    return false;
  }
}
