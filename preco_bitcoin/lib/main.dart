import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(
  MaterialApp(
    home: HomePage(),
  )
);

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String _BRLValue = "Carregando...";

  _HomePageState(){
    this._updateBRLValue();
  }

  void _updateBRLValue() async{

    String BRLResponse = "";

    String url = "https://blockchain.info/ticker";
    http.Response response;

    response = await http.get(url);

    if ( response.statusCode == 200 ) {
      Map<String, dynamic> retorno = jsonDecode(response.body);

      BRLResponse = "R\$ " + retorno['BRL']['buy'].toString();
    } else {
      BRLResponse = "Ocorreu algum erro";
    }

    setState(() {
      _BRLValue = BRLResponse;
    });

    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset("images/bitcoin.png"),
            Padding(
              padding: EdgeInsets.only(top:30, bottom:30),
              child: Text(
                _BRLValue,
                style: TextStyle(
                  fontSize: 35,
                ),
              ),
            ),
            RaisedButton(
              color: Colors.orange,
              padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
              onPressed: (){
                _updateBRLValue();
              },
              child: Text(
                "Atualizar",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}