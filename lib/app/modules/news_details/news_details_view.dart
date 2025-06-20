import 'package:flutter/material.dart';

class NewsDetailsView extends StatelessWidget {
  const NewsDetailsView({
    super.key,
    required this.tags,
    required this.headline,
    required this.description,
  });
  final List<String> tags;
  final String headline;
  final String description;

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
      ),

      body: Center(child: Text(description)),
    );
  }
}
