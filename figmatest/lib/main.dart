// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:math' as math;

void main(List<String> args) {
  runApp(MaterialApp(home: Scaffold(body: Group1Widget(),),));
}

class Group1Widget extends StatefulWidget {
  const Group1Widget({Key? key}) : super(key: key);

  @override
  _Group1WidgetState createState() => _Group1WidgetState();
}

class _Group1WidgetState extends State<Group1Widget> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator Group1Widget - GROUP

    return Container(
        width: 790,
        height: 667,
        child: Stack(children: <Widget>[
          Positioned(
              top: 0,
              left: 415,
              child: Container(
                  width: 375,
                  height: 667,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 66,
                        left: 39,
                        child: Container(
                            width: 317,
                            height: 305,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(24),
                                topRight: Radius.circular(24),
                                bottomLeft: Radius.circular(24),
                                bottomRight: Radius.circular(24),
                              ),
                              color: Color.fromRGBO(86, 214, 242, 1),
                            ))),
                    Positioned(
                        top: 478,
                        left: 39,
                        child: Text(
                          'Description comes here',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Roboto',
                              fontSize: 12,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1.5 /*PERCENT not supported*/
                              ),
                        )),
                    Positioned(
                        top: 416,
                        left: 39,
                        child: Text(
                          'price \$200',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Roboto',
                              fontSize: 12,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1.5 /*PERCENT not supported*/
                              ),
                        )),
                    Positioned(
                        top: 595,
                        left: 49,
                        child: Container(
                            width: 245,
                            height: 44,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(196, 196, 196, 1),
                            ))),
                    Positioned(
                        top: 608,
                        left: 142,
                        child: Text(
                          'add to cart',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Roboto',
                              fontSize: 12,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1.5 /*PERCENT not supported*/
                              ),
                        )),
                    Positioned(
                        top: 12,
                        left: 329,
                        child: Transform.rotate(
                          angle: 2.405274281334557e-8 * (math.pi / 180),
                          child: Divider(
                              color: Color.fromRGBO(0, 0, 0, 1), thickness: 3),
                        )),
                    Positioned(
                        top: 39,
                        left: 329,
                        child: Transform.rotate(
                          angle: 2.405274281334557e-8 * (math.pi / 180),
                          child: Divider(
                              color: Color.fromRGBO(0, 0, 0, 1), thickness: 3),
                        )),
                    Positioned(
                        top: 25,
                        left: 329,
                        child: Transform.rotate(
                          angle: 2.405274281334557e-8 * (math.pi / 180),
                          child: Divider(
                              color: Color.fromRGBO(0, 0, 0, 1), thickness: 3),
                        )),
                  ]))),
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                  width: 375,
                  height: 667,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 461,
                        left: 187,
                        child: Container(
                            width: 104,
                            height: 25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5),
                                topRight: Radius.circular(5),
                                bottomLeft: Radius.circular(5),
                                bottomRight: Radius.circular(5),
                              ),
                              color: Color.fromRGBO(86, 214, 242, 1),
                            ))),
                    Positioned(
                        top: 459,
                        left: 59,
                        child: Container(
                            width: 77,
                            height: 27,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5),
                                topRight: Radius.circular(5),
                                bottomLeft: Radius.circular(5),
                                bottomRight: Radius.circular(5),
                              ),
                              color: Color.fromRGBO(86, 214, 242, 1),
                            ))),
                    Positioned(
                        top: 11,
                        left: 10,
                        child: Text(
                          'softvec',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Roboto',
                              fontSize: 12,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    Positioned(
                        top: 93,
                        left: 31,
                        child: Text(
                          'product name',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Roboto',
                              fontSize: 12,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1.5 /*PERCENT not supported*/
                              ),
                        )),
                    Positioned(
                        top: 461,
                        left: 70,
                        child: Text(
                          'buy now ',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Roboto',
                              fontSize: 12,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1.5 /*PERCENT not supported*/
                              ),
                        )),
                    Positioned(
                        top: 461,
                        left: 198,
                        child: Text(
                          'learn more',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Roboto',
                              fontSize: 12,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1.5 /*PERCENT not supported*/
                              ),
                        )),
                    Positioned(
                        top: 147,
                        left: 39,
                        child: Container(
                            width: 300,
                            height: 250,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(24),
                                topRight: Radius.circular(24),
                                bottomLeft: Radius.circular(24),
                                bottomRight: Radius.circular(24),
                              ),
                              color: Color.fromRGBO(86, 214, 242, 1),
                            ))),
                    Positioned(
                        top: 18,
                        left: 329,
                        child: Transform.rotate(
                          angle: 2.405274281334557e-8 * (math.pi / 180),
                          child: Divider(
                              color: Color.fromRGBO(0, 0, 0, 1), thickness: 3),
                        )),
                    Positioned(
                        top: 45,
                        left: 329,
                        child: Transform.rotate(
                          angle: 2.405274281334557e-8 * (math.pi / 180),
                          child: Divider(
                              color: Color.fromRGBO(0, 0, 0, 1), thickness: 3),
                        )),
                    Positioned(
                        top: 31,
                        left: 329,
                        child: Transform.rotate(
                          angle: 2.405274281334557e-8 * (math.pi / 180),
                          child: Divider(
                              color: Color.fromRGBO(0, 0, 0, 1), thickness: 3),
                        )),
                  ]))),
        ]));
  }
}
