// ignore_for_file: non_constant_identifier_names, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:ejercicio_json_api/models.dart';

class MisContactos extends StatelessWidget {
  final List<Datos> usuarios;
  MisContactos(this.usuarios);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: usuarios.length,
        itemBuilder: (BuildContext context, int i) {
          final usuario = usuarios[i];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(tileColor: Colors.white,
              title: Text('${usuario.name} ${usuario.age} años'),
              subtitle: Text(usuario.email),leading: Image.network(usuario.image),
              trailing: Text(usuario.id),
            ),
          );
        });
  }
}
