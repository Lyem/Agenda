import 'package:agenda/pages/cadastro.dart';
import 'package:flutter/material.dart';

import 'pages/info.dart';

void main() {runApp(MyApp());}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agenda',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColorLight: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pendente'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.error_outline), onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => info()),
          );})
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => cadastro()),
          );
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          children: [

          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Center(
                child: Text('Menu', style: TextStyle(fontSize: 35, color: Colors.white),),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Pronto'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Entrega'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Finalizado'),
              onTap: () {
                Navigator.pop(context);
              }
            ),
          ],
        ),
      ),
    );
  }
}

