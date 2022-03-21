import 'package:flutter/material.dart';
import 'package:paym/keys/globay_key.dart';
import 'package:mpesa_flutter_plugin/mpesa_flutter_plugin.dart';
import 'package:paym/services/mpesa_pay.dart';

void main(List<String> args) {
  MpesaFlutterPlugin.setConsumerKey(consumerKey);
  MpesaFlutterPlugin.setConsumerSecret(consumerSecret);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("payment test with m-pesa")),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              MpesaPay.startCheckout(userPhone: '254710383551', amount: 1.0);
            },
            child: const Text("lipa na m-pesa")),
      ),
    );
  }
}
