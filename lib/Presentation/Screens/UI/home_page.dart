import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: CreditCardWidget(
          bankName: 'ABC Limited',
          cardNumber: '5242424242424242',
          expiryDate: '01-01-99',
          cardHolderName: 'Alice',
          cvvCode: '123',
          showBackView: false,
          onCreditCardWidgetChange: (val) {},
        ),
      ),
    );
  }
}
