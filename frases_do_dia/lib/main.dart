import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false, //remove a "bandeira de debug"
      home: Scaffold(
        appBar: AppBar(
          title: Text("Frases do dia"),
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
      )
    )
  );
}