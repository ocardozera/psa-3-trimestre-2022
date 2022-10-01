import '../dados/dados_cliente.dart';
import '../entidade/cliente.dart';
import '../portas/cliente_repositorio.dart';
import '../portas/enviar_email.dart';
import 'notificar_cliente.dart';

class RegistrarCliente {
  DadosCliente dadosCliente;
  late Cliente cliente;
  late ClienteRepositorio repositorio;
  late EnviarEmail email;

  RegistrarCliente(this.dadosCliente) {
    cliente = Cliente.cadastrar(dadosCliente);
    var notificar = NotificarCliente(dadosCliente);
    if (repositorio.salvar(dadosCliente)) {
      notificar.enviarEmail();
    }
  }
}
