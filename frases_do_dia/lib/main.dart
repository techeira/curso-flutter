import 'package:flutter/material.dart';

/*
Stateless -> Widgets que não podem ser alterados
Stateful -> Widgets que podem ser alterados
*/

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false, //remove a "bandeira de debug"
      home: HomeStateful(),
      //home: Home(),
    )
  );
}

class HomeStateful extends StatefulWidget {
  @override
  _HomeStatefulState createState() => _HomeStatefulState();
}

class _HomeStatefulState extends State<HomeStateful> {

  var _titulo = "Frases do dia";
  var _nome = "Fulano";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titulo),
        backgroundColor: Color(0xFF656565),
      ),
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blue,
            style: BorderStyle.solid
          ),
        ),
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: (){
                setState(() {
                  _nome="Ciclano";
                });
              },
              child: Text(
                "Clique aqui"
              ),
            ),
            Text("nome: $_nome")
          ]
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {

  var _titulo = "Frases do dia";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titulo),
        backgroundColor: Color(0xFF656565),
      ),
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blue,
            style: BorderStyle.solid
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            "body",
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xFFC6C6C6),
        child: Container(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text("texto 1"),
                Text("texto 2"),
              ],
            )
          ),
        ),
      ),
    );
  }
}