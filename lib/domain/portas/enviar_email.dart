import '../dados/dados_email.dart';

abstract class EnviarEmail {
  bool enviar(DadosEmail email);
}
