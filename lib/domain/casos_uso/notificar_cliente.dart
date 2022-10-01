import '../dados/dados_cliente.dart';
import '../dados/dados_email.dart';
import '../portas/enviar_email.dart';

class NotificarCliente {
  DadosCliente dadosCliente;
  late EnviarEmail email;

  NotificarCliente(this.dadosCliente) {
    //conversão de dados
  }

  enviarEmail() {
    var dadosEmail = DadosEmail(dadosCliente.email);
    email.enviar(dadosEmail);
  }
}
