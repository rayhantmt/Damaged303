import 'package:flutter/material.dart';

class CahtView extends StatelessWidget {
  const CahtView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Chat Screen'), centerTitle: true),
      body: Column(
        children: [
          SingleChildScrollView(child: Center(child: Text("Chat Screen"))),
        ],
      ),
    );
  }
}
