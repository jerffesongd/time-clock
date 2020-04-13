import 'package:flutter/material.dart';

class RegistroEntradaSaida extends StatelessWidget {

  final String entrada;
  final String saida;

  RegistroEntradaSaida({Key key, @required this.entrada, this.saida=""}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: 
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              entrada, 
              style: TextStyle(
                fontSize: 20
              ),
            ),
            Text(
              " - "
            ),
            Text(
              saida, 
              style: TextStyle(
                fontSize: 20
              )
            )
          ],
        ),
    );
  }
}