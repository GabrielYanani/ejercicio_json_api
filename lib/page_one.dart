// ignore_for_file: prefer_const_constructors
import 'dart:convert';

import 'package:ejercicio_json_api/models.dart';
import 'package:flutter/material.dart';
import 'package:ejercicio_json_api/mis_contactos.dart';
import 'package:ejercicio_json_api/main.dart';

class pageOne extends StatelessWidget {
  const pageOne({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'CONTACTOS',
        ),
      ),
      backgroundColor: Colors.grey,
      body: FutureBuilder(
        future: getUsuarios(),
        builder: (BuildContext context, AsyncSnapshot<Datos> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else {
            return MisContactos (snapshot.data);
          }
        },
      ),
    );
  }
}
