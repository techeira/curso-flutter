import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    )
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frase = "Clique abaixo para gerar uma frase";
  var _frases = [
    "Frase 0",
    "Frase 1",
    "Frase 2",
    "Frase 3",
    "Frase 4",
    "Frase 5",
  ];

  void _trocarFrase(){

    var index = Random().nextInt(_frases.length);

    setState(() {
      _frase = _frases[index];                    
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do Dia"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          //width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/logo.png"),
              Text(
                _frase,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 17,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                ),
              ),
              RaisedButton(
                onPressed: (){
                  _trocarFrase();
                },
                color: Colors.green,
                child: Text(
                  "Nova frase",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          )
        ),
      )
    );
  }
}