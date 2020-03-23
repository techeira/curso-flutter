import 'package:flutter/material.dart';



void main(){
  runApp(
    MaterialApp(
      //debugShowCheckedModeBanner: false, //remove a "bandeira de debug"
      title: "Frases do dia",
      home: Container(
        margin: EdgeInsets.only(
          top: 40,
        ),
        decoration: BoxDecoration(
          //color: Colors.white,
          border: Border.all(
            color: Colors.cyan,
            style: BorderStyle.solid,
            width: 1,
          )
        ),
        child: Image.asset(
          "images/mesa.jpg",
          fit: BoxFit.contain,
        )
      )
    )
  );
}