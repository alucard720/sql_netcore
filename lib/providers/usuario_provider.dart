import 'package:flutter/cupertino.dart';
import 'package:sql_netcore/constants.dart';
import 'package:sql_netcore/models/usuarios.dart';
import 'package:http/http.dart' as http;

final urlapi = url;

class Usuario_provider with ChangeNotifier {
  List<Usuario> usuarios = [];

  getUsuarios() async {
    final url1 = Uri.http(urlapi, 'api/Usuario');
    final resp = await http.get(url1, headers: {});
  }
}
