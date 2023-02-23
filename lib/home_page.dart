import 'package:flutter/material.dart';
import 'package:navegacion/screens/help_screen.dart';
import 'package:navegacion/screens/login_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            title: const Text('Ir al Login'),
            subtitle: const Text('En esta pantalla te logeas'),
            trailing: const Icon(Icons.arrow_forward_ios),
            leading: const CircleAvatar(
              child: Text('LG'),
            ),
            onTap: () {
              final ruta = MaterialPageRoute(
                builder: (_) => const LoginPage(),
              );
              Navigator.push(context, ruta);
            },
          ),
          ListTile(
            title: const Text('Ir a Ayuda'),
            subtitle: const Text('Soporte Tecnico'),
            trailing: const Icon(Icons.arrow_forward_ios),
            leading: const CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text('ST'),
            ),
            onTap: () {
              final ruta = MaterialPageRoute(
                builder: (_) => const HelpScreen(),
              );
              Navigator.push(context, ruta);
            },
          ),
        ],
      ),
    );
  }
}
