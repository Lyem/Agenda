import 'package:agenda/pages/cadastro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
        title: Text('Agenda'),
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
    );
  }
}

