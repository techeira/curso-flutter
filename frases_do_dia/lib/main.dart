import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title: "Frases do dia",
      home: Container(
				color: Colors.white,
        child: Column(
          children: <Widget>[
            Text(
							//"aí vai um textão só pra testar a quantidade de caracteres",
              "teste teste",
							style: TextStyle(
								fontSize: 40,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.normal,
								color: Colors.black,
                letterSpacing: 0,
                wordSpacing: 0,
                decoration: TextDecoration.none,
                decorationColor: Colors.black,
                decorationStyle: TextDecorationStyle.solid
							),
						),
          ],
        ),
      )
    )
  );
}