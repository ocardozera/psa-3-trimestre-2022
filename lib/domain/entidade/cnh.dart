import '../dados/categoria_cnh.dart';

class CNH {
  late String numeroRegistro;
  late DateTime dataValidade;
  late DateTime dataPrimeiraHabilitacao;
  late CategoriaCNH categoriaCNH;

  CNH({required this.numeroRegistro, required this.dataValidade, required this.dataPrimeiraHabilitacao, required this.categoriaCNH}) {}

  bool validarCNH() {
    return validarTamanho() &&
        validaCategoria() &&
        validarDataValidade() &&
        validarDataPrimeiraHabilitacao();
  }

  bool validarTamanho() {
    return numeroRegistro.length == 11;
  }

  bool validaCategoria() {
    return categoriaCNH != 1;
  }

  bool validarDataValidade() {
    DateTime agora = new DateTime.now();
    DateTime dataAtual = new DateTime(agora.year, agora.month, agora.day);

    DateTime dataValidadeAux =
        new DateTime(dataValidade.year, dataValidade.month, dataValidade.day);

    if (dataAtual.microsecond > dataValidadeAux.millisecond) {
      return true;
    } else {
      return false;
    }
  }

  bool validarDataPrimeiraHabilitacao() {
    DateTime agora = new DateTime.now();
    DateTime dataAtual = new DateTime(agora.year, agora.month, agora.day);

    DateTime dataPrimeiraHab = new DateTime(dataPrimeiraHabilitacao.year + 2,
        dataPrimeiraHabilitacao.month, dataPrimeiraHabilitacao.day);

    if (dataAtual.microsecond > dataPrimeiraHab.millisecond) {
      return true;
    } else {
      return false;
    }
  }
}
