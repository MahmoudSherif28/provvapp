import 'package:flutter/cupertino.dart';

class prov1 extends ChangeNotifier {
  String name = "";
  String email = "";
  String mobaile = "";
  String password = "";

  signin(String name, String email, String mobaile, String Password) {
    this.name = name;
    this.email = email;
    this.mobaile = mobaile;
    this.password = password;
    notifyListeners();
  }
}
