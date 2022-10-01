import '../entidade/cliente.dart';
import '../entidade/cnh.dart';
import 'dados_cnh.dart';

class DadosCliente {
  late String nome;
  late String email;
  late String telefone;
  late String cpf;
  late DadosCnh cnh;
  late DateTime dataNascimento;

  DadosCliente(
      {required this.nome,
      required this.email,
      required this.telefone,
      required this.cpf,
      required this.cnh,
      required this.dataNascimento});

  Cliente dadosToEntity() {
    return Cliente(
      cnh: cnh.dadosToEntity(), 
      cpf: cpf, 
      dataNascimento: dataNascimento, 
      email: email, 
      nome: nome);
  }
}
