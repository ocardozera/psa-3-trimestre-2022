import '../entidade/cnh.dart';

class DadosCliente {
  late String nome;
  late String email;
  late String telefone;
  late String cpf;
  late CNH cnh;
  late DateTime dataNascimento;

  DadosCliente(
      {required this.nome,
      required this.email,
      required this.telefone,
      required this.cpf,
      required this.cnh,
      required this.dataNascimento});
}
