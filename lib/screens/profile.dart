import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ProfileUser extends StatelessWidget {
  // Widget Batata() {
  //   return Container(child: ,);
  // }

  Widget ResumeProfile() => Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
        child: Row(children: <Widget>[
          Expanded(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  // Image.asset(
                  //   'assets/image/imagem_perfil.png/',
                  //   alignment: Alignment.bottomCenter,
                  // ),
                  Text("Foto"),
                  Text("Nome | Idade | Bairro",
                      style: TextStyle(color: Colors.grey)),
                ]),
          )
        ]),
      );

  Widget InfoProfile() => Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
        child: Row(children: <Widget>[
          Expanded(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Image.asset(
                  //   'assets/image/imagem_perfil.png/',
                  //   alignment: Alignment.bottomCenter,
                  // ),
                  Text("Informações Gerais:"),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                  ),
                  Text("Nome", style: TextStyle(color: Colors.grey)),
                  Text("CPF", style: TextStyle(color: Colors.grey)),
                  Text("E-mail", style: TextStyle(color: Colors.grey)),
                  Text("Idade", style: TextStyle(color: Colors.grey)),
                  Text("Endereço", style: TextStyle(color: Colors.grey)),
                ]),
          )
        ]),
      );

  Widget RegisterList() => Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
        child: Row(children: <Widget>[
          Expanded(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text("Registros de Satisfação:"),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Icon(Icons.school),
                      Text("Construção - Creche Hermenegilda Carolina",
                          style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.school),
                      Text("Nome | Idade | Bairro",
                          style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ]),
          )
        ]),
      );

  Widget TestCard() => Card(
      elevation: 3.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        verticalDirection: VerticalDirection.down,
        children: <Widget>[
          Image(image: AssetImage('image/imagem_perfil.png')),
          Center(
            child: Text("name"),
          )
        ],
      ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
        children: <Widget>[
          // ResumeProfile(),
          // InfoProfile(),
          // RegisterList(),
          TestCard(),
        ],
      )),
    );
  }
}
