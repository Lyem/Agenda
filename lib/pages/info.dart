import 'package:flutter/material.dart';

class info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sobre"),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Desenvolvido por:", style: TextStyle(fontSize: 20),),
              Image.asset('assets/images/ore.png', height: 80, width: 80,),
              Text("O.R.E", style: TextStyle(fontSize: 30),),
              Text("Versão 1.0.0"),
            ]
        ),
      ),
    );
  }
}