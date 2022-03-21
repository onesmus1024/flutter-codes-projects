import 'dart:async';
import 'package:mpesa_flutter_plugin/mpesa_flutter_plugin.dart';

class MpesaPay {
 static Future<void> startCheckout(
      {required String userPhone, required double amount}) async {
    dynamic transactionInitialisation;
    try {
      transactionInitialisation =
          await MpesaFlutterPlugin.initializeMpesaSTKPush(
              businessShortCode: "9441003",
              transactionType: TransactionType.CustomerBuyGoodsOnline,
              amount: amount,
              partyA: userPhone,
              partyB: "9441003",
              callBackURL: Uri(
                  scheme: "https", host: "1234.1234.co.ke", path: "/1234.php"),
              accountReference: "eazyfood",
              phoneNumber: userPhone,
              baseUri: Uri(scheme: "https", host: "sandbox.safaricom.co.ke"),
              transactionDesc: "purchase",
              passKey: 'E9Bae+TfKuoNOE6Zg/mGyFFLGuJTyO0qhblej/TDL/9XqTSvyBqItsGWx7k3/gGg30rA11OzY9SEEhoTw2s3mw8k//WJvtBAZ/PwRmOWj0KhFcAOHxRUQz8x+lc2KKncZ5LDmidQH41tjBdEPt53Xd83DS0vk6LFGJ4XOALXJJo4iLJymCen74fhE+C1h9iMAt7TTdUE4BE+G9WtC98UzSQNJyLAU4ZjoqSAT6XuZUowogvJodY4iitOgUd02II8enMpNNrckKYf01jtu0AGnic+6bkVU3JMG9fLWmo2BZ14pH1RGING+TNp2n59wtPSB5UFjCNCa3UP8LL2u7ja5Q==');

      print("TRANSACTION RESULT: " + transactionInitialisation.toString());

      return transactionInitialisation;
    } catch (e) {
      print("CAUGHT EXCEPTION: " + e.toString());

      /*
      Other 'throws':
      1. Amount being less than 1.0
      2. Consumer Secret/Key not set
      3. Phone number is less than 9 characters
      4. Phone number not in international format(should start with 254 for KE)
       */
    }
  }
}
