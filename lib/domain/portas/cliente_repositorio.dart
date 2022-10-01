import '../dados/dados_cliente.dart';

abstract class ClienteRepositorio {
  bool salvar(DadosCliente dadosCliente);
  bool existe(DadosCliente dadosCliente);
  excluir(int id);
  listar();
  buscar(int id);
}
