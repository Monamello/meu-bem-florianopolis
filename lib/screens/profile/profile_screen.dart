import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ProfileUser extends StatelessWidget {
  Widget ImageProfile() => Container(
        margin: EdgeInsets.symmetric(vertical: 30),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(300),
          child: Image(image: AssetImage('image/profile_photo.png')),
        ),
      );

  Widget ResumeProfile() => Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Row(children: <Widget>[
          Expanded(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('Marilia Oliveira'),
                  Text('Desenvolvedora de Software',
                      style: TextStyle(color: Colors.grey)),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 5),
                          child: Icon(
                            Icons.location_on,
                            size: 25,
                            color: Colors.green[800],
                          ),
                        ),
                        Text('Barra da Lagoa',
                            style: TextStyle(color: Colors.grey[700])),
                      ]),
                ]),
          )
        ]),
      );

  // Widget AddressInfos() => Container(
  //       decoration: BoxDecoration(
  //           borderRadius: BorderRadius.circular(5), color: Colors.grey[300]),
  //       padding: EdgeInsets.symmetric(vertical: 10),
  //       child:
  //           Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
  //         Icon(
  //           Icons.location_on,
  //           size: 25,
  //           color: Colors.green[800],
  //         ),
  //         Text('Barra da Lagoa', style: TextStyle(color: Colors.grey[700])),
  //       ]),
  //     );

  Widget RegisterList() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.grey[200]),
      padding: EdgeInsets.symmetric(vertical: 25),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10, right: 40),
            child: Icon(
              Icons.school,
              size: 40,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Construção', style: TextStyle(color: Colors.grey[700])),
                Text('Creche Hermenegilda Carolina',
                    style: TextStyle(color: Colors.grey[700])),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget RegisterList2() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.grey[200]),
      padding: EdgeInsets.symmetric(vertical: 25),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10, right: 40),
            child: Icon(
              Icons.directions,
              size: 40,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Infraestrutura',
                    style: TextStyle(color: Colors.grey[700])),
                Text('Sinalização Turística do Município',
                    style: TextStyle(color: Colors.grey[700])),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget RegisterList3() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.grey[200]),
      padding: EdgeInsets.symmetric(vertical: 25),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10, right: 40),
            child: Icon(
              Icons.home,
              size: 40,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Habitação', style: TextStyle(color: Colors.grey[700])),
                Text('Serv. de Recuperação habitacionais',
                    style: TextStyle(color: Colors.grey[700])),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: <Widget>[
              ImageProfile(),
              ResumeProfile(),
              // Padding(
              //   padding: EdgeInsets.only(bottom: 10),
              //   child: AddressInfos(),
              // ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: RegisterList(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: RegisterList2(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: RegisterList3(),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
