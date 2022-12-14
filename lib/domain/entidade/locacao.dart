import '../dados/dados_carro.dart';
import '../dados/dados_cliente.dart';
import '../dados/dados_locacao.dart';
import 'carro.dart';
import 'cliente.dart';

class Locacao{
  late Carro carro;
  late Cliente cliente;
  late DateTime dataLocacao;
  late double quilometragemLocacao;
  late double valorCalcao;
  late double valorLocacao;
  late bool devolvido;
  late DateTime dataDevolucao;
  late double quilometragemDevolucao;

  Locacao(
      {required this.carro,
      required this.cliente,
      required this.dataLocacao,
      required this.quilometragemLocacao,
      required this.valorCalcao,
      required this.valorLocacao,
      required this.devolvido,
      required this.dataDevolucao,
      required this.quilometragemDevolucao});

  Locacao.cadastrar(DadosLocacao dadosLocacao) {
    var carro = dadosLocacao.carro;
    var cliente = dadosLocacao.cliente;
    var dataLocacao = dadosLocacao.dataLocacao;
    var quilometragemLocacao = dadosLocacao.quilometragemLocacao;
    var valorCalcao = dadosLocacao.valorCalcao;
    var devolvido = dadosLocacao.devolvido;
    var dataDevolucao = dadosLocacao.dataDevolucao;
    var quilometragemDevolucao = dadosLocacao.quilometragemDevolucao;

    valorLocacao = calcularValorFinal(cliente, carro);

    this.carro = carro.dadosToEntity();
    this.cliente = cliente.dadosToEntity();
    this.dataLocacao = dataLocacao;
    this.quilometragemLocacao = quilometragemLocacao;
    this.valorCalcao = valorCalcao;
    this.valorLocacao = valorLocacao;
    this.devolvido = devolvido;
    this.dataDevolucao = dataDevolucao;
    this.quilometragemDevolucao = quilometragemDevolucao;
  }

  // desconto com base no tempo de cnh (Exemplo: 0,5% de desconto por ano de cnh)
  double calcularValorFinal(DadosCliente dadosCliente, DadosCarro dadosCarro) {
    Cliente cliente = dadosCliente.dadosToEntity();
    Carro carro = dadosCarro.dadosToEntity();

    int anosDeCnh = cliente.cnh.anosDeCnh();
    double valorBase = carro.valorBaseLocacao;

    double valorFinal = valorBase - valorBase * (0.5 * anosDeCnh);

    return valorFinal;
  }

}
