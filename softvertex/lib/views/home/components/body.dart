import 'package:flutter/material.dart';
import 'package:softvertex/models/product.dart';
import 'package:softvertex/views/details/details.dart';
import 'package:softvertex/views/home/components/search_field.dart';

class body extends StatelessWidget {
  const body({Key? key, required this.cart}) : super(key: key);
  final cart;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        searchbox(),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.5),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight:Radius.circular(30), )
            ),
            child: FutureBuilder(
              future: getproduct(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.data == null) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (snapshot.data.length == 0) {
                  return Center(
                    child: Text("No product"),
                  );
                } else {
                  return GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 3,
                    ),
                    
                    itemCount: snapshot.data.length,
                  
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Detail(
                                            image: snapshot.data[index].imageurl,
                                            description:
                                                snapshot.data[index].description,
                                          ))),
                              child: Image.network(
                                snapshot.data[index].imageurl,
                                loadingBuilder: (context, child, loadingProgress) {
                                  return loadingProgress == null
                                      ? child
                                      : CircularProgressIndicator();
                                },
                              ),
                            ),
                            Row(
                              
                              children: [Text("\$ 200 ksh"),
                              SizedBox(width: 20,),
                                ElevatedButton(onPressed: cart, child: Text("add to cart")),
                              ],
                            )
                          ],
                        ),
                      );
                    },
                  );
                }
              },
            ),
          ),
        ),
      ],
    );
  }
}
