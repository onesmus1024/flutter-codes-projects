import 'package:flutter/material.dart';
import 'package:softvertex/views/details/details.dart';
import 'package:softvertex/views/home/components/productItemView.dart';
import 'package:softvertex/views/home/components/search_field.dart';
import 'package:softvertex/providers/products.dart';
import 'package:provider/provider.dart';

class body extends StatefulWidget {
  body({Key? key, required this.cart}) : super(key: key);
  final cart;

  @override
  State<body> createState() => _bodyState();
}

class _bodyState extends State<body> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero)
        .then((value) => Provider.of<Products>(context,listen: false).getproduct());
  }

  Widget build(BuildContext context) {
    final products = Provider.of<Products>(context).items;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        searchbox(),
        Expanded(
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                )),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 3,
                  childAspectRatio: 10 / 8),
              itemCount: products.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                    child: GestureDetector(
                      onTap:() => Navigator.pushNamed(context, Detail.routeName,arguments: index),
                      child: ProductItem(
                                      k: index,
                                    ),
                    ));
              },
            ),
          ),
        ),
      ],
    );
  }
}
