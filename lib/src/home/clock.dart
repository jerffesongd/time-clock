import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Clock extends StatefulWidget {
  Clock({Key key}) : super(key: key);

  @override
  _ClockState createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  DateTime dateTime;
  DateFormat _dateFormat = DateFormat("EEEE, dd LLLL yyyy");
  DateFormat _timeFormat = DateFormat("HH:mm:ss");
  
  @override
  void initState() {
    super.initState();  
    dateTime = DateTime.now();
  }

  String dataFormatada() {

    String horario = "";
    horario += _dateFormat.format(dateTime);
    return horario;
  }

  String horarioFormatado() {

    String horario = "";
    horario += _timeFormat.format(dateTime);
    return horario;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          dataFormatada()
        ),
        Text(
          horarioFormatado(),
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),
        ),
      ],
    );
  }

  void updateTime(Timer timer) {
    if (this.mounted) {
      setState(() {
        dateTime = DateTime.now();  
      });
    }

  }
}
