import '../entidade/cnh.dart';
import 'tipo_combustivel.dart';

class DadosCarro {
  late String modelo;
  late double valorBaseLocacao;
  late int quilometragem;
  late int anoFabricacao;
  late int anoModelo;
  late String placa;
  late int renavam;
  late String chassis;
  late String categoria;
  late TipoCombustivel tipoCombustivel;
  late int potenciaCv;
  late bool disponivel;

  DadosCarro(
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
}
