import 'package:flutter_modular/flutter_modular.dart';

class CoreModule extends Module {
  @override
  List<Bind> get binds => [
        // Bind.lazySingleton<Pessoarepository>((i) => PessoaRepositoryImpl(),
        //     export: true),
        // Bind.lazySingleton<BuscarPessoaService>(
        //     (i) => BuscarPessoaService(pessoarepository: i()),
        //     export: true),
      ];

// Nao possui rotas
}
