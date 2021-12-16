// ignore_for_file: prefer_const_constructors

import 'package:ejercicio_json_api/page_one.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ejercicio_json_api/models.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.grey,
        ),
        home: pageOne());
  }
}

Future<Datos> getUsuarios() async {
  final respuesta = await http.get(Uri.parse('https://reqres.in/api/users'));
  return datosFromJson(respuesta.body);
}
