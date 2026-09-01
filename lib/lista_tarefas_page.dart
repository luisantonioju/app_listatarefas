import 'package:flutter/material.dart';

class ListaTarefasPage extends StatelessWidget {
  const ListaTarefasPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> tarefas = [
      {'titulo': 'Fazer Compras', 'situacao': false},
      {'titulo': 'Pagar Conta de Luz', 'situacao': true},
      {'titulo': 'Revisar aula de TI', 'situacao': false},
      {'titulo': 'Pagar Fatura do Inter', 'situacao': false},
      {'titulo': 'Levar carro na manutenção', 'situacao': false},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Minhas Tarefas"),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(12),
        children: [
          Card(
            child: ListTile(
              leading: Icon(
                Icons.check_circle,
                color: Colors.green,
              ),
              title: Text(
                'Configurar o ambiente de desenvolvimento',
                style: TextStyle(
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              subtitle: Text('Concluída'),
              trailing: Icon(
                Icons.delete_outline,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        child: Icon(Icons.add),
      ),
    );
  }
}
