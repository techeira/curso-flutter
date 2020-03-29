import 'package:flutter/material.dart';
import 'dart:math';

import 'TelaCaraCoroa.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void enviarCaraOuCoroa(){

    String caraOuCoroa = "";

    int randNum = Random().nextInt(2);
    if (randNum==0) {
      caraOuCoroa = "Cara";
    } else {
      caraOuCoroa = "Coroa";
    }
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TelaCaraCoroa(caraOuCoroa)
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xff61bd86),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "images/logo.png"
            ),
            Padding(
              padding: EdgeInsets.only(top:32),
              child: GestureDetector(
                onTap: (){
                  enviarCaraOuCoroa();
                },
                child: Image.asset(
                  "images/botao_jogar.png"
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}