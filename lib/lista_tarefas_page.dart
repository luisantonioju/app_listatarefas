import 'package:flutter/material.dart';

class ListaTarefasPage extends StatelessWidget {
  const ListaTarefasPage({super.key});

  @override
  Widget build(BuildContext context) {
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
          Card(
            child: ListTile(
              leading: Icon(
                Icons.circle_outlined,
                color: Colors.grey,
              ),
              title: Text(
                'fazer a atividade flutter',
              ),
              subtitle: Text('Pendente'),
              trailing: Icon(
                Icons.delete_outline,
                color: Colors.grey,
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(
                Icons.check_circle,
                color: Colors.green,
              ),
              title: Text(
                'Fiz 126 perguntas no Sumário documentado da Alexandra',
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
