import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(AppRelogio());
}

class AppRelogio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RelogioDigital(),
    );
  }
}

class RelogioDigital extends StatefulWidget {
  @override
  _RelogioDigitalState createState() => _RelogioDigitalState();
}

class _RelogioDigitalState extends State<RelogioDigital> {
  String horaAtual = '';

  @override
  void initState() {
    super.initState();
    atualizarHora();
  }

  void atualizarHora() {
    Timer.periodic(Duration(seconds: 1), (_) {
      setState(() {
        horaAtual = DateTime.now().toLocal().toString().split('.')[0];
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Relógio Digital')),
      body: Center(
        child: Text(
          horaAtual,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
