import 'package:flutter/material.dart';
import 'package:softvertex/views/home/components/body.dart';
import 'package:badges/badges.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _items = 0;
  void cart_item() {
    setState(() {
      _items = _items + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Softvertex"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: cart_item,
              child: Badge(
                elevation:0,
                badgeContent: Text('$_items',style: TextStyle(color: Theme.of(context).primaryColor,),),
                child: Icon(Icons.shopping_bag_outlined),
              ),
            ),
          ),
        ],
      ),
      body: body(cart: cart_item,),
      backgroundColor: Theme.of(context).primaryColor,
    );
  }
}
