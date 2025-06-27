import 'package:flutter/material.dart';

class ChatHistory extends StatelessWidget {
  const ChatHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {
                print('search tapped');
              },
              child: Icon(Icons.search),
            ),
          ),
        ],
        centerTitle: true,
        title: Text(
          'History',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
        ),
      ),
      body: Center(child: Text('History')),
    );
  }
}
