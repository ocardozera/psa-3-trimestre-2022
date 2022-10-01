import '../entidade/cliente.dart';
import '../entidade/cnh.dart';
import 'categoria_cnh.dart';

class DadosCnh {
  late String numeroRegistro;
  late DateTime dataValidade;
  late DateTime dataPrimeiraHabilitacao;
  late CategoriaCNH categoriaCNH;


  DadosCnh(
      {required this.numeroRegistro,
      required this.dataValidade,
      required this.dataPrimeiraHabilitacao,
      required this.categoriaCNH});

  CNH dadosToEntity() {
    return CNH(
      numeroRegistro: numeroRegistro, 
      dataValidade: dataValidade, 
      dataPrimeiraHabilitacao: dataPrimeiraHabilitacao, 
      categoriaCNH: categoriaCNH);
  }
}
