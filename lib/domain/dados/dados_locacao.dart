import 'dados_carro.dart';
import 'dados_cliente.dart';

class DadosLocacao {
  late DadosCarro carro;
  late DadosCliente cliente;
  late DateTime dataLocacao;
  late double quilometragemLocacao;
  late double valorCalcao;
  late double valorLocacao;
  late bool devolvido;
  late DateTime dataDevolucao;
  late double quilometragemDevolucao;
  DadosLocacao(
      {required this.dataLocacao,
      required this.quilometragemLocacao,
      required this.valorCalcao,
      required this.valorLocacao,
      required this.devolvido,
      required this.dataDevolucao,
      required this.quilometragemDevolucao});
}
