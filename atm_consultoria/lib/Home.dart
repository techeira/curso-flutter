import 'package:flutter/material.dart';

import 'TelaEmpresa.dart';
import 'TelaCliente.dart';
import 'TelaServico.dart';
import 'TelaContato.dart';

class Home extends StatelessWidget {

  void _abrirEmpresa(context){
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context)=>TelaEmpresa() ,
      )
    );
  }

  void _abrirServico(context){
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context)=>TelaServico() ,
      )
    );
  }
  
  void _abrirCliente(context){
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context)=>TelaCliente() ,
      )
    );
  }

  void _abrirContato(context){
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context)=>TelaContato() ,
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("ATM Consultoria"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "images/logo.png",
            ),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {_abrirEmpresa(context); },
                    child: Image.asset("images/menu_empresa.png"),
                  ),
                  GestureDetector(
                    onTap: () { _abrirServico(context); },
                    child: Image.asset("images/menu_servico.png"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: () { _abrirCliente(context); },
                    child: Image.asset("images/menu_cliente.png"),
                  ),
                  GestureDetector(
                    onTap: () { _abrirContato(context); },
                    child: Image.asset("images/menu_contato.png"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}