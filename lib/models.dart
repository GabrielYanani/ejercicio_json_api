// To parse this JSON data, do
//
//     final datos = datosFromJson(jsonString);

import 'dart:convert';

Datos datosFromJson(String str) => Datos.fromJson(json.decode(str));

String datosToJson(Datos data) => json.encode(data.toJson());


class Datos {
    Datos({
        this.createdAt,
        this.name,
        this.email,
        this.image,
        this.age,
        this.balance,
        this.id,
    });

    DateTime createdAt;
    String name;
    String email;
    String image;
    int age;
    double balance;
    String id;

    factory Datos.fromJson(Map<String, dynamic> json) => Datos(
        createdAt: DateTime.parse(json["createdAt"]),
        name: json["name"],
        email: json["email"],
        image: json["image"],
        age: json["age"],
        balance: json["balance"].toDouble(),
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "createdAt": createdAt.toIso8601String(),
        "name": name,
        "email": email,
        "image": image,
        "age": age,
        "balance": balance,
        "id": id,
    };
}
