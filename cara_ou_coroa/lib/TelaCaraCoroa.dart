import 'package:flutter/material.dart';

class TelaCaraCoroa extends StatelessWidget {

  AssetImage _imagem;

  TelaCaraCoroa(caraOuCoroa){
    if (caraOuCoroa=="Cara") {
      _imagem = AssetImage("images/moeda_cara.png");
    } else {
      _imagem = AssetImage("images/moeda_coroa.png");
    }
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
            Image(image: this._imagem),
            Padding(
              padding: EdgeInsets.only(top:32),
              child: GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Image.asset(
                  "images/botao_voltar.png"
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}