import 'package:flutter/material.dart';

void main() => runApp(AppTarefas());

class AppTarefas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: ListaTarefas());
  }
}

class ListaTarefas extends StatefulWidget {
  @override
  _ListaTarefasState createState() => _ListaTarefasState();
}

class _ListaTarefasState extends State<ListaTarefas> {
  final TextEditingController _controller = TextEditingController();
  final List<String> _tarefas = [];

  void adicionar() {
    if (_controller.text.isNotEmpty) setState(() => _tarefas.add(_controller.text));
    _controller.clear();
  }

  void remover(int index) => setState(() => _tarefas.removeAt(index));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tarefas")),
      body: Column(children: [
        TextField(controller: _controller, decoration: InputDecoration(labelText: "Nova tarefa")),
        ElevatedButton(onPressed: adicionar, child: Text("Adicionar")),
        Expanded(
          child: ListView.builder(
            itemCount: _tarefas.length,
            itemBuilder: (context, index) {
              return ListTile(title: Text(_tarefas[index]), trailing: IconButton(icon: Icon(Icons.delete), onPressed: () => remover(index)));
            },
          ),
        )
      ]),
    );
  }
}
