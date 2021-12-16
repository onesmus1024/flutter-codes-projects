import 'package:mysql1/mysql1.dart';
import 'dart:async';

class Dbconnection {
  // ignore: non_constant_identifier_names
  Future db_con() async {
    var c = new ConnectionSettings(
        host: 'localhost',
        port: 3306,
        user: 'root',
        db: 'OnesEcommerce1',
        password: 'on07mawa');

    return MySqlConnection.connect(c);
  }
}
