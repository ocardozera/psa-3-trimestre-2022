import '../dados/dados_carro.dart';

abstract class CarroRepositorio {
  bool salvar(DadosCarro dadosCarro);
  bool existe(DadosCarro dadosCarro);
  excluir(int id);
  listar();
  buscar(int id);
}
