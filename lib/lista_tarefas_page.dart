import 'package:flutter/material.dart';

class ListaTarefasPage extends StatelessWidget {
  const ListaTarefasPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> tarefas = [
      {'titulo': 'Fazer Compras', 'situacao': false},
      {'titulo': 'Pagar Conta de Luz', 'situacao': true},
      {'titulo': 'Revisar aula de TI', 'situacao': true},
      {'titulo': 'Pagar Fatura do Inter', 'situacao': false},
      {'titulo': 'Levar carro na manutenção', 'situacao': false},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Minhas Tarefas"),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(12),
        itemCount: tarefas.length,
        itemBuilder: (context, index) {
          final tarefa = tarefas[index];
          final bool situacao = tarefa['situacao'];
          return Card(
            child: ListTile(
              leading: Icon(
                situacao ? Icons.check_circle : Icons.circle_outlined,
                color: situacao ? Colors.green : Colors.grey,
              ),
              title: Text(
                tarefa['titulo'],
                style: TextStyle(
                  decoration: situacao
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                ),
              ),
              subtitle: Text(situacao ? 'Concluída' : 'Pendente'),
              trailing: Icon(
                Icons.delete_outline,
                color: Colors.grey,
              ),
            ),
          );
        },
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
