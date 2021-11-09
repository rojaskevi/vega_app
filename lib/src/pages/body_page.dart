import 'dart:async';

import 'package:flutter/material.dart';
// import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';



class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = new TextStyle(fontSize: 25);
  int _conteo = 0;

  final ButtonStyle style = ElevatedButton.styleFrom(
      primary: Colors.red[700],
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      textStyle: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
      shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0)
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Color.fromRGBO(241, 23, 19, 1),
        // title: Text('Vega334'),
        title: Image.asset('data/images/logo.png'),
        centerTitle: true,
      ),
      // body: _listaElementos(),
      resizeToAvoidBottomInset: false,
      body: Center(
        
          child: Column(
        children: <Widget>[
          Container(
            child: Center(child: Image.asset('data/images/top.jpg')),
          ),
          Expanded(
            child: Container(
              child: Center(
                child: //Column(
                   ListView(
                  children: <Widget>[
                  ListTile(
                    title: Center(
                        child: Text(
                      '                Te envitamos a ser parte\n de una nueva experiencia de compra online',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 17.0),
                    )),
                  ),
                  ElevatedButton(                  
                    style: style,
                    onPressed: _launchURLBrowser,
                    child: const Text('www.vega.pe'),
                  ),
                  ListTile(
                    title: Center(
                        child: Text(
                      "Rápida, fácil y segura",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 17.0),
                    )),
                  )
                ]),
              ),
              color: Colors.white,
            ),
          ),
          Container(
            child: Center(child: Image.asset('data/images/footer.jpg')),
          ),
        ],
      )),
    );
  }

  _launchURLBrowser() async {
    const url = 'https://www.vega.pe/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}