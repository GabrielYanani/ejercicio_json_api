// To parse this JSON data, do
//
//     final datos = datosFromJson(jsonString);

import 'dart:convert';

Datos datosFromJson(String str) => Datos.fromJson(json.decode(str));

String datosToJson(Datos data) => json.encode(data.toJson());

class Datos {
    Datos({
        this.page,
        this.perPage,
        this.total,
        this.totalPages,
        this.data,
        this.support,
    });

    int page;
    int perPage;
    int total;
    int totalPages;
    List<Usuarios> data;
    Support support;

    factory Datos.fromJson(Map<String, dynamic> json) => Datos(
        page: json["page"],
        perPage: json["per_page"],
        total: json["total"],
        totalPages: json["total_pages"],
        data: List<Usuarios>.from(json["data"].map((x) => Usuarios.fromJson(x))),
        support: Support.fromJson(json["support"]),
    );

    Map<String, dynamic> toJson() => {
        "page": page,
        "per_page": perPage,
        "total": total,
        "total_pages": totalPages,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "support": support.toJson(),
    };
}

class Usuarios {
    Usuarios({
        this.id,
        this.email,
        this.firstName,
        this.lastName,
        this.avatar,
    });

    int id;
    String email;
    String firstName;
    String lastName;
    String avatar;

    factory Usuarios.fromJson(Map<String, dynamic> json) => Usuarios(
        id: json["id"],
        email: json["email"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        avatar: json["avatar"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "first_name": firstName,
        "last_name": lastName,
        "avatar": avatar,
    };
}

class Support {
    Support({
        this.url,
        this.text,
    });

    String url;
    String text;

    factory Support.fromJson(Map<String, dynamic> json) => Support(
        url: json["url"],
        text: json["text"],
    );

    Map<String, dynamic> toJson() => {
        "url": url,
        "text": text,
    };
}
