import 'package:damaged303/app/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CahtView extends StatelessWidget {
  const CahtView({super.key, this.chat_name, this.chat_imng});
  final String? chat_name;
  final String? chat_imng;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              Container(
                height: 68,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffE6ECEB),
                  border: Border.all(width: 1, color: AppColors.primarycolor),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
