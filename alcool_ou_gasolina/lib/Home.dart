import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String _resultado = "";

  TextEditingController _controllerAlcool = TextEditingController();
  TextEditingController _controllerGasolina = TextEditingController();

  void _calcular(){

    String result = "";

    double precoAlcool = double.tryParse(this._controllerAlcool.text);
    double precoGasolina = double.tryParse(this._controllerGasolina.text);

    if (precoAlcool==null) {
      result = "Preço do Álcool inválido";
    } else if(precoGasolina==null){
      result = "Preço da Gasolina inválido";
    } else {
      if( (precoAlcool / precoGasolina) >= 0.7 ){
        result = "Melhor abastecer com gasolina";
      } else {
        result = "Melhor abastecer com álcool";
        // limparCampos();
      }
    }

    setState(() {
      _resultado = result;
    });
  }

  void _limparCampos(){
    _controllerAlcool.text = "";
    _controllerGasolina.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Álcool ou Gasolina"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child:
        Container(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 32),
                  child: Image.asset(
                    "images/logo.png",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    "Saiba qual a melhor opção para abastecimento do seu carro",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Preço Álcool"
                  ),
                  style: TextStyle(
                    fontSize: 18,
                  ),
                  controller: _controllerAlcool,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Preço Gasolina"
                  ),
                  style: TextStyle(
                    fontSize: 18,
                  ),
                  controller: _controllerGasolina,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: RaisedButton(
                    onPressed: _calcular,
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Text(
                      "Calcular",
                      style: TextStyle(
                        fontSize: 18
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    _resultado,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}