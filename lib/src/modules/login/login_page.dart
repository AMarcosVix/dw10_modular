import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Modular.to.pushNamed('/home',
                      arguments: 'Pessoa enviado pelo data');
                },
                child: const Text('Enviado pelo data')),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Modular.to.pushNamed('/home/?query=pessoa&order=id');
                },
                child: const Text('Enviado pelo queryParams')),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Modular.to.pushNamed('/home/53');
                },
                child: const Text('params')),
          ],
        ),
      ),
    );
  }
}
