import 'package:http/http.dart' as http;
import 'dart:convert';

class Product {
  Product(
      {required this.id,
      required this.name,
      required this.description,
      required this.imageurl,
      required this.category});
  int? id;
  String? name;
  String? description;
  String? imageurl;
  String? category;
}



Future getproduct() async {
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
  } else {
    print("erro");
  }
  return products;
}
