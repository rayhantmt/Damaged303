import 'package:flutter/material.dart';

class PorfileView extends StatelessWidget {
  const PorfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile'), centerTitle: true),
      body: Column(
        children: [
          SingleChildScrollView(child: Center(child: Text("Your profile"))),
        ],
      ),
    );
  }
}
