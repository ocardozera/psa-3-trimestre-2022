import 'erro_generico.dart';

class IdadeNaoPermitida extends ErroGenerico {
  IdadeNaoPermitida()
      : super('Idade não permitida, você possui menos de 21 anos!');
}
