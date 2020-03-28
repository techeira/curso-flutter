import 'package:flutter/material.dart';

class TelaEmpresa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Empresa"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        
        // child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.asset("images/detalhe_empresa.png"),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Sobre a empresa",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.deepOrange,
                      ),
                      ),
                  )
                  
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas porttitor ultrices sapien a facilisis. Cras sit amet lobortis ex, vel dapibus mauris. Cras semper elit ante, et tincidunt arcu interdum eget. Praesent facilisis libero in lorem sagittis, eget convallis mi ultrices. Mauris sed faucibus leo. Curabitur consequat, urna in egestas efficitur, massa massa ultrices felis, sit amet imperdiet arcu mauris vel elit. Aenean in blandit lectus. Cras facilisis quam eget neque viverra ultrices."
                "Nunc at porttitor nulla. Donec eleifend blandit orci quis fringilla. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer leo nisl, finibus nec neque ac, ornare iaculis ante. Nullam bibendum sollicitudin ullamcorper. Quisque tristique cursus ipsum, laoreet pellentesque urna mattis nec. Praesent sodales cursus sem ac pharetra. Integer mollis ex vel ipsum ultrices, venenatis euismod ex molestie. Etiam at lorem vel elit facilisis euismod. Nam massa mi, accumsan ut dolor nec, imperdiet vestibulum tortor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Cras rutrum velit arcu, ut laoreet nisi convallis lacinia."
                "Proin efficitur vestibulum sapien, vitae venenatis sapien fringilla id. Maecenas non porta odio, ut vestibulum sapien. Nullam vitae porta mi. Morbi rhoncus dolor nec dictum faucibus. Donec in pulvinar quam. Mauris tempor placerat tortor, in condimentum mauris pellentesque id. Morbi congue cursus maximus. Quisque et purus auctor, interdum lacus nec, dictum arcu. Etiam at nunc sit amet ipsum malesuada pellentesque."
                "Sed sit amet ante velit. Aenean et pharetra purus. In rutrum nibh at elementum semper. Sed hendrerit sapien ut pellentesque suscipit. Nulla facilisi. In egestas dolor ut orci molestie iaculis. Quisque et gravida tortor. Curabitur faucibus eleifend leo eu tempus."
                "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc at cursus erat. Morbi at dapibus libero. Fusce ut orci arcu. Nulla feugiat tellus ac dui eleifend, a mollis mauris scelerisque. Fusce porta elit nisi, consectetur porta nisl finibus sit amet. Duis vel dapibus ante, et aliquet augue. Vivamus eu euismod dui. Maecenas sit amet nisi sed nulla venenatis imperdiet. Quisque iaculis mi sit amet tempor blandit. Nulla quis vulputate mi, at dignissim lectus."
                ),
              )
              
            ],
          ),
        // )
      ),
    );
  }
}