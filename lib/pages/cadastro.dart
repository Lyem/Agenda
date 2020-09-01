import 'package:flutter/material.dart';

class cadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastrar"),
      ),
      body: Center(
        child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Nome do Produto",
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Nome do Cliente",
                ),
              ),
            ]
        ),
      ),
    );
  }
}