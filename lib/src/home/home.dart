import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:timeclock/src/home/clock.dart';

class Home extends StatefulWidget {

  Home({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  void initState() {
    super.initState();
    Intl.defaultLocale = 'pt_BR';
    initializeDateFormatting('pt_BR', null);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Time Cock"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Clock(),
              Container(
                  height: 60,
                  width: double.infinity,
                  color: Colors.red,
                  child: null
                    
                ),       
              
            ],
          ),
        ),
      ),
    );
  }
}