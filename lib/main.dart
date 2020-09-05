import 'package:flutter/material.dart';
import 'pages/info.dart';
import 'pages/cadastro.dart';

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

  String NamePage = "Pendentes";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(NamePage),
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
              title: Text('Pendentes', style: TextStyle(fontSize: 16),),
              leading: Icon(Icons.alarm),
              onTap: () {
                NamePage = "Pendentes";
                Navigator.pop(context);
                setState(() {
                  MyApp;
                });
              },
            ),
            ListTile(
              title: Text('Prontos', style: TextStyle(fontSize: 16),),
              leading: Icon(Icons.assistant_photo),
              onTap: () {
                NamePage = "Prontos";
                Navigator.pop(context);
                setState(() {
                  MyApp;
                });
              },
            ),
            ListTile(
              title: Text('Entregar', style: TextStyle(fontSize: 16),),
              leading: Icon(Icons.directions_car),
              onTap: () {
                NamePage = "Entregar";
                Navigator.pop(context);
                setState(() {
                  MyApp;
                });
              },
            ),
            ListTile(
              title: Text('Entregado', style: TextStyle(fontSize: 16),),
              leading: Icon(Icons.weekend),
              onTap: () {
                NamePage = "Entregado";
                Navigator.pop(context);
                setState(() {
                  MyApp;
                });
              }
            ),
          ],
        ),
      ),
    );
  }
}

