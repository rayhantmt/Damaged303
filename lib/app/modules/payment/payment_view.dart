import 'package:damaged303/app/utils/app_images.dart';
import 'package:flutter/material.dart';

class PaymentView extends StatefulWidget {
  const PaymentView({super.key});

  @override
  State<PaymentView> createState() => _PaymentViewState();
}

class _PaymentViewState extends State<PaymentView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Payment method",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 24,
            color: Color(0xFF050505),
          ),
        ),
        centerTitle: true,
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Credit card details",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Color(0xFF050505),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Color(0xFFB0C3C2)),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Row(
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(child: TextFormField()),
                  Row(
                    children: [
                      Image.asset(AppImages.visa),
                      Image.asset(AppImages.mastercard),
                      Image.asset(AppImages.american_express),
                      Image.asset(AppImages.apple_pay),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
