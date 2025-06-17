import 'package:damaged303/app/utils/app_images.dart';
import 'package:flutter/material.dart';

class HomeStack extends StatelessWidget {
  const HomeStack({super.key, required this.tittle, required this.img});
  final String tittle;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(width: 1, color: Color(0xFF999999)),
      ),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsetsGeometry.all(8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(img, fit: BoxFit.cover),
                  Text(tittle),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
