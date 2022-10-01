import '../dados/dados_carro.dart';

abstract class ApiDenatran {
  DadosCarro consultarPlaca(String placa);
  DadosCarro consultarRenavam(String renavam);
  DadosCarro consultarChassis(String chassis);
}
