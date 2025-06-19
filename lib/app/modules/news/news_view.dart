import 'package:flutter/material.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'News Feed',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 24,
            color: Color(0xFF1B1E28),
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SingleChildScrollView(child: Center(child: Text("News Screen"))),
        ],
      ),
    );
  }
}
