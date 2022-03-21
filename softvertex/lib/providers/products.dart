import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:softvertex/models/product.dart';
import 'package:http/http.dart' as http;

class Products with ChangeNotifier {
  List<Product> _items = [];

  List<Product> get items {
    return [..._items];
  }

  Future<void> getproduct() async {
    List<Product> products = [];
    var url = Uri.http('127.0.0.1:8000', '/productapi');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      print("connection okay");
      var data = jsonDecode(response.body);
      for (var json in data) {
        products.add(Product(
            id: json['id'],
            name: json['name'],
            description: json['description'],
            imageurl: json['image'],
            category: json['category']));
      }
      _items = products;
      print("hello");
      print(_items[1].id);
      notifyListeners();
    } else {
      print("erro");
    }
  }
}
