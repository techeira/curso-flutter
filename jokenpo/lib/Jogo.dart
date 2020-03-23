import 'package:flutter/material.dart';
import 'dart:math';

class Jogo extends StatefulWidget {
  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {

  String _resultado = "Faça sua escolha";
  String _imgPadrao = "images/padrao.png";

  var _imagens = [
    "images/pedra.png",
    "images/papel.png",
    "images/tesoura.png",
  ];

  void _selecionarImagem(index){

    int randNum = new Random().nextInt(3);
    String result = "";

    if (randNum==index) {
      result = "empate";
    } else {
      if(
        ( randNum == 0 && index == 1 ) ||
        ( randNum == 1 && index == 2 ) ||
        ( randNum == 2 && index == 0 )
      ) {
        result = "você venceu";
      } else {
        result = "você perdeu";
      }
    }

    setState(() {
      this._imgPadrao = _imagens[randNum];
      this._resultado = result;
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Jokenpo"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              top: 32,
              bottom: 16,
            ),
            child: Text(
              "Escolha do App",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Image.asset(_imgPadrao),
          Padding(
            padding: EdgeInsets.only(
              top: 32,
              bottom: 16,
            ),
            child: Text(
              _resultado,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              GestureDetector(
                onTap: (){
                  _selecionarImagem(0);
                },
                child: Image.asset(
                  "images/pedra.png",
                  height: 100,
                ),
              ),
              GestureDetector(
                onTap: (){
                  _selecionarImagem(1);
                },
                child: Image.asset(
                  "images/papel.png",
                  height: 100,
                ),
              ),
              GestureDetector(
                onTap: (){
                  _selecionarImagem(2);
                },
                child: Image.asset(
                  "images/tesoura.png",
                  height: 100,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}