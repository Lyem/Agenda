import 'package:flutter/material.dart';

class cadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro"),
      ),
      body: Center(
        child: ListView(
            children: [
              TextFormField(
                autofocus: true,
                decoration: InputDecoration(
                  icon: Icon(Icons.cake),
                  border: InputBorder.none,
                  labelText: "Produto",
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  border: InputBorder.none,
                  labelText: "Nome do Cliente",
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.attach_money),
                  border: InputBorder.none,
                  labelText: "Preço do produto",
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.call_to_action),
                  border: InputBorder.none,
                  labelText: "Forma de pagamento",
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.place),
                  border: InputBorder.none,
                  labelText: "Endereço do cliente",
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.calendar_today),
                  border: InputBorder.none,
                  labelText: "Data da entrega",
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.call),
                  border: InputBorder.none,
                  labelText: "Telefone",
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.content_paste),
                  border: InputBorder.none,
                  labelText: "Obeservações",
                ),
              ),
              const SizedBox(height: 85),
              RaisedButton(
                onPressed: (){},
                color: Colors.blue,
                child: const Text('Cadastrar', style: TextStyle(fontSize: 35,color: Colors.white)),
              ),
            ]
        ),
      ),
    );
  }
}