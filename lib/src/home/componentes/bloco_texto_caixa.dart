import 'package:flutter/material.dart';
import 'package:timeclock/src/home/colors_app.dart';
class BlocoTextoCaixa extends StatefulWidget {

  String titulo;
  Widget textoCaixa;

  BlocoTextoCaixa(this.titulo, this.textoCaixa);

  @override
  _BlocoTextoCaixaState createState() => _BlocoTextoCaixaState();
}

class _BlocoTextoCaixaState extends State<BlocoTextoCaixa> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top : 100),
        child: Column(
          children: <Widget>[
            Text(
              widget.titulo,
              style: TextStyle(
                fontSize: 20
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.all(15),
                width: MediaQuery.of(context).size.width * 0.75,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: ColorsApp.PRIMARY, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10,
                          offset: Offset(
                            5.0, // horizontal, move right 10
                            5.0, // vertical, move down 10
                          ))
                    ]),
                child: Center(
                  child: 
                    widget.textoCaixa
                  )
            ),
          ],
        ));
  }
}
