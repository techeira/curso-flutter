import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      //debugShowCheckedModeBanner: false, //remove a "bandeira de debug"
      title: "Frases do dia",
      home: Container(
				//color: Colors.black,
        padding: EdgeInsets.fromLTRB(
          0,
          30,
          0,
          30,
        ),
        margin: EdgeInsets.fromLTRB(
          10,
          30,
          10,
          30
        ),
        decoration: BoxDecoration(
          //color: Colors.white,
          border: Border.all(
            color: Colors.cyan,
            style: BorderStyle.solid,
            width: 1,
          )
        ),
        child: Column(
          children: <Widget>[
            Text(
              "t1",
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: Text(
                "t2"
              )
            ),
            Text(
              "t3",
            )
            /*
            Text(
              "Imagine aqui um texto bonito que vou usar apenas para testar",
              textAlign: TextAlign.justify,
            )
            */
          ],
        ),
      )
    )
  );
}