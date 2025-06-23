import 'package:flutter/material.dart';

class CahtView extends StatelessWidget {
  const CahtView({super.key, this.chat_name, this.chat_imng});
  final String? chat_name;
  final String? chat_imng;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(chat_name ?? ''), centerTitle: true),
      body: Column(
        children: [
          SingleChildScrollView(
            child: Center(child: Image.asset(chat_imng ?? "")),
          ),
        ],
      ),
    );
  }
}
