import 'package:damaged303/app/modules/main_screen/main_screen_controller.dart';
import 'package:damaged303/app/modules/news/news_model.dart';
import 'package:damaged303/app/modules/news_details/news_details_view.dart';
import 'package:damaged303/app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key});

  @override
  Widget build(BuildContext context) {
    final newsList = newsdescritiondetail().newsdescriptions;
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Get.put<BottomNavController>(BottomNavController()).changeTab(0);
            Get.back();

            print('news back');
          },
          child: Icon(Icons.arrow_back),
        ),
        title: Text(
          'News Feed',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 24,
            color: Color(0xFF1B1E28),
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_none_outlined, size: 30),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(Icons.search),
                    hintText: 'Search News',
                  ),
                ),
                height: 45,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Color(0xFFB0C3C2)),
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
            ),
            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '   Select a category',
                      ),
                    ),
                    height: 45,
                    width: Get.width * 0.5,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Color(0xFFB0C3C2)),
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: newsList.length,
                itemBuilder: (BuildContext context, int index) {
                  final tags = newsList[index].tags;
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: Get.width * .25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: AppColors.primarycolor,
                            ),
                            child: Center(
                              child: Text(
                                tags.first,
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Color(0xFFE6E6E6),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 8),
                          Container(
                            height: 40,
                            width: Get.width * .25,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xFFE6ECEB),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Text(
                                tags.last,
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Color(0xFF050505),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        newsList[index].headline,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Color(0xFF1B1E28),
                        ),
                      ),
                      SizedBox(height: 10),
                      GestureDetector(
                        onTap: () {
                          Get.to(
                            NewsDetailsView(
                              tags: tags,
                              headline: newsList[index].headline,
                              description: newsList[index].description,
                            ),
                          );
                        },
                        child: Text(
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                          newsList[index].description,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Color(0xFF7D848D),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
