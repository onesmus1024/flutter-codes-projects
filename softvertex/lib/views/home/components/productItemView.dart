import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:softvertex/providers/products.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    Key? key,this.k
  }) : super(key: key);
  final k;

  @override
  Widget build(BuildContext context) {
    final products = Provider.of<Products>(context, listen: false);
    final product = products.items;
    return GridTile(
        child: Image.network("${product[k].imageurl}"),
        footer: GridTileBar(
          backgroundColor: Colors.black38,
          title: Text("${product[k].name}"),
          trailing: IconButton(
            icon: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            onPressed: () {},
          ),
        ),
      );
  
  }
}
