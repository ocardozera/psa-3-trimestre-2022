import '../dados/dados_cliente.dart';
import '../erro/cnh_invalida.dart';
import '../erro/idade_nao_permitida.dart';
import 'cnh.dart';

class Cliente {
  late String nome;
  late String email;
  late String telefone;
  late String cpf;
  late CNH cnh;
  late DateTime dataNascimento;

  Cliente(
      {required this.nome,
      required this.email,
      required this.cpf,
      required this.cnh,
      required this.dataNascimento});

  Cliente.cadastrar(DadosCliente dadosCliente) {
    var nome = dadosCliente.nome;
    var email = dadosCliente.email;
    var telefone = dadosCliente.telefone;
    var cpf = dadosCliente.cpf;

    if (!validarIdade()) {
      throw IdadeNaoPermitida();
    }

    if (!cnh.validarCNH()) {
      throw CnhInvalida();
    }

    this.nome = nome;
    this.email = email;
    this.telefone = telefone;
    this.cpf = cpf;
    this.cnh = cnh;
    this.dataNascimento = dataNascimento;
  }

  bool validarIdade() {
    int anoAtual = DateTime.now().year;

    int anoNascimento = dataNascimento.year;

    int idade = anoAtual - anoNascimento;
    if (idade >= 21) {
      return true;
    } else {
      return false;
    }
  }
}
