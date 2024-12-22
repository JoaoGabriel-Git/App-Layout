import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'layout',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 123, 255, 171),
        ),
        useMaterial3: true,
      ),
      home: const PaginaPrincipal(titulo: 'Programa Layout'),
    );
  }
}

class PaginaPrincipal extends StatefulWidget {
  const PaginaPrincipal({
    super.key,
    required this.titulo,
  });

  final String titulo;

  @override
  State<PaginaPrincipal> createState() => _PaginaPrincipalState();
}

class _PaginaPrincipalState extends State<PaginaPrincipal> {
  void _incrementCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.titulo),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Layout Superior
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              //color: const Color.fromARGB(255, 254, 201, 117),
              child: const Text('Layout Superior'),
            ),
          ),
          // Linha do Meio
          Expanded(
            flex: 7,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Primeira Coluna
                Expanded(
                  child: Container(
                      //alignment: Alignment.center,
                      //color: const Color.fromARGB(255, 118, 230, 253),
                      //child: const Text('Primeira Linha'),
                      ),
                ),
                // Segunda Coluna
                Expanded(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                    child: const Text('Meu aplicativo'),
                  ),
                ),
                // Terceira Coluna
                Expanded(
                  child: Container(
                      //alignment: Alignment.center,
                      //color: const Color.fromARGB(255, 118, 230, 253),
                      //child: const Text('Terceira Linha'),
                      ),
                ),
              ],
            ),
          ),
          // Layout Inferior
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              //color: const Color.fromARGB(255, 252, 141, 237),
              child: const Text(
                'Layout Inferior',
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
