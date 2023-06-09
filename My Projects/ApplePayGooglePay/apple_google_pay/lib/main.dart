import 'package:flutter/material.dart';
import 'package:pay/pay.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

const _paymentItems = [
  PaymentItem(
    label: 'Total',
    amount: '99.99',
    status: PaymentItemStatus.final_price,
  )
];

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Apple Pay Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //Container(color: Colors.red, width:  200, height: 50,)
            ApplePayButton(
              paymentConfigurationAsset: 'apple_pay.json',
              paymentItems: _paymentItems,
              style: ApplePayButtonStyle.black,
              type: ApplePayButtonType.buy,
              width: 200,
              height: 50,
              margin: const EdgeInsets.only(top: 15.0),
              onPaymentResult: (value) {
                print(" Stringsss  ... .${value}");
              },
              onError: (error) {
                print(" FOLLOWING IS THE ERROR ::: ${error}");
                
              },              
              loadingIndicator: const Center(
                child: CircularProgressIndicator(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}