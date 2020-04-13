import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:timeclock/src/home/clock.dart';
import 'package:timeclock/src/home/colors_app.dart';
import 'package:timeclock/src/home/componentes/bloco_texto_caixa.dart';
import 'package:timeclock/src/home/componentes/registro_entrada_saida.dart';
class Home extends StatefulWidget {

  Home({Key key, this.title}) : super(key: key);
  final String title;
  

  @override
  _HomeState createState() => _HomeState();
  
}

class _HomeState extends State<Home> {

  GlobalKey<ScaffoldState> scaffoldState = GlobalKey<ScaffoldState>();

  List<Widget> registroDoDia() {

    List registros = List<Widget>();

    registros.add(RegistroEntradaSaida(entrada: "8:00", saida: "12:00"));
    registros.add(RegistroEntradaSaida(entrada: "13:00", saida: "17:46"));

    return registros;
  }

  @override
  void initState() {
    super.initState();
    Intl.defaultLocale = 'pt_BR';
    initializeDateFormatting('pt_BR', null);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldState,
      appBar: AppBar(
        title: Text("Time Cock"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.input),
        backgroundColor: ColorsApp.PRIMARY,
        onPressed: () {


        },
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Clock(),
              BlocoTextoCaixa(
                "Total do dia", 
                Text(
                  "08:46",
                  style: TextStyle(
                    fontSize: 50
                  ),
                )
              ),
              BlocoTextoCaixa(
                "Registros", 
                Column(
                  children: registroDoDia(),
                )
              ),  
            ],
          ),
        ),
      ),
    );
  }
}