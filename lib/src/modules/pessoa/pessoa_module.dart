import 'package:flutter_modular/flutter_modular.dart';

import '../../repositories/pessoa/pessoa_repository.dart';
import '../../repositories/pessoa/pessoa_repository_impl.dart';
import '../../services/buscar_pessoa_service.dart';

class PessoaModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.lazySingleton<Pessoarepository>((i) => PessoaRepositoryImpl(),
            export: true),
        Bind.lazySingleton<BuscarPessoaService>(
            (i) => BuscarPessoaService(pessoarepository: i()),
            export: true),
      ];
}
