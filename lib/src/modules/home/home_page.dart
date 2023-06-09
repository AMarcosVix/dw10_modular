import 'package:dw10_modular/src/repositories/pessoa/pessoa_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
          child: Column(
        children: [
          Text(Modular.args.data ?? ''),
          Text(Modular.args.queryParams.toString()),
          Text(Modular.args.params.toString()),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              //Modular.get();
              context.read<PessoaRepositoryImpl>();
            },
            child: const Text('Recuperar instancia'),
          ),
        ],
      )),
    );
  }
}
