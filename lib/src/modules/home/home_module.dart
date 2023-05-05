import 'package:dw10_modular/src/modules/home/home_page.dart';
import 'package:dw10_modular/src/modules/pessoa/pessoa_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [
        // Bind.lazySingleton<Pessoarepository>((i) => PessoaRepositoryImpl()),
        // Bind.lazySingleton<BuscarPessoaService>(
        //     (i) => BuscarPessoaService(pessoarepository: i())),

        //Bind.singleton<Pessoarepository>((i) => PessoaRepositoryImpl()),
        //Bind.instance<Pessoarepository>(PessoaRepositoryImpl()),
        //Bind.factory<Pessoarepository>((i) => PessoaRepositoryImpl()),
      ];

  @override
  List<Module> get imports => [
        //CoreModule(),
        PessoaModule(),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const HomePage()),
        ChildRoute('/:id', child: (context, args) => const HomePage()),
      ];
}
