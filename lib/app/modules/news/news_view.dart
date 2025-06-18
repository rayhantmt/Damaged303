import 'package:flutter/material.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('News'), centerTitle: true),
      body: Column(
        children: [
          SingleChildScrollView(child: Center(child: Text("News Screen"))),
        ],
      ),
    );
  }
}
