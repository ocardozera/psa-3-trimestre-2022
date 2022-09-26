class CNH {
  late String numeroRegistro;
  late DateTime dataValidade;
  late DateTime dataPrimeiraHabilitacao;

  CNH(this.numeroRegistro, this.dataValidade) {}

  bool validarCNH() {
    return validarTamanho() &&
        validarDataValidade() &&
        validarDataPrimeiraHabilitacao();
  }

  bool validarTamanho() {
    return numeroRegistro.length == 11;
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
