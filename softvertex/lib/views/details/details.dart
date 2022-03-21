import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:accordion/accordion.dart';
import 'package:provider/provider.dart';
import 'package:softvertex/providers/products.dart';

class Detail extends StatelessWidget {
  const Detail({
    Key? key,
  }) : super(key: key);
  static const routeName = '/detail';
  

  @override
  Widget build(BuildContext context) {
    var val = ModalRoute.of(context)!.settings.arguments as int;
    final products = Provider.of<Products>(context);
    final product = products.items;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        elevation: 0.1,
        title: Text("${product[val].name}"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network("${product[val].imageurl}")),
                  );
                },
              ),
              DotsIndicator(dotsCount: 3),
              Container(
                child: Accordion(
                  rightIcon: Icon(Icons.keyboard_arrow_down,
                      color: Colors.black, size: 20),
                  headerBackgroundColor: Colors.white,
                  contentBorderColor: Colors.white,
                  children: [
                    AccordionSection(
                        header: Text("Description"),
                        content: Text("${product[val].description}"))
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: ElevatedButton(
                    onPressed: () {}, child: Text("Add to cart")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
