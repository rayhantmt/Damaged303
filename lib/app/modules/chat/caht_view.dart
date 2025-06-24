import 'package:damaged303/app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(Icons.arrow_back_ios_new),
                    ),
                    Container(
                      height: 42,
                      width: 42,
                      child: Image.asset(chat_imng ?? ""),
                    ),
                    Text(
                      chat_name ?? "",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 24,
                        color: Color(0xff050505),
                      ),
                    ),
                    Icon(Icons.more_vert_rounded),
                  ],
                ),
                height: 68,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffE6ECEB),
                  border: Border.all(width: 1, color: AppColors.primarycolor),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Center(child: Text('Messeges')),
                ),
              ),

              Container(
                height: 50,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: '   Type a message...',
                          border: InputBorder.none,
                        ),
                      ),
                      width: Get.width * .70,

                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Color(0xffDDDDDF)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    Icon(Icons.mic),
                    IconButton.filled(
                      style: IconButton.styleFrom(
                        backgroundColor: AppColors.primarycolor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {},
                      icon: Icon(Icons.send_outlined),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
