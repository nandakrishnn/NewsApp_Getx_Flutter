import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:newsapp/getx/home_controllers.dart';
import 'package:newsapp/pages/details_newss.dart';
import 'package:newsapp/refactored_widgets/container_home.dart';
import 'package:newsapp/refactored_widgets/main_titles.dart';
import 'package:newsapp/refactored_widgets/top_channels.dart';

class Home extends StatelessWidget {
  final Homecontroller controller = Get.put(Homecontroller());
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    Future<void> _autoRefresh() async {
      await Future.delayed(const Duration(seconds: 10));
      await controller.onRefresh();
    }

    _autoRefresh();

    Timer.periodic(const Duration(seconds: 23), (timer) {
      controller.onRefresh();
    });
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: RefreshIndicator(
          onRefresh: () => controller.onRefresh(),
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const MainTitle(title: 'Top Channels Available'),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      TopChannels(
                        url:
                            'https://cdn.freebiesupply.com/images/thumbs/2x/bbc-logo.png',
                        channelName: 'BBC ',
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      TopChannels(
                          url:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThj8iY_JKWgiwU4b623WACeo_MCuUDBcPh8niqce34Yg&s',
                          channelName: 'CNN'),
                      SizedBox(
                        width: 20,
                      ),
                      TopChannels(
                          url:
                              'https://logos-world.net/wp-content/uploads/2020/11/Fox-News-Channel-Emblem.png',
                          channelName: 'FOX'),
                      SizedBox(
                        width: 20,
                      ),
                      TopChannels(
                          url:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMN6sFIwni-ZRInrtBs6P7D0TFQ5fDMPuw65OCaGy3Og&s',
                          channelName: 'GOOGLE')
                    ],
                  ),
                ),
                SizedBox(height: 25,),
                const MainTitle(title: 'Top Business news'),
                GestureDetector(
                  onTap: (){
                    
                  },
                  child: SizedBox(
                      height: MediaQuery.of(context).size.height * .4,
                      child: Obx(
                        () => ListView.separated(
                            separatorBuilder: (context, index) {
                              return const SizedBox(width: 16);
                            },
                            scrollDirection: Axis.horizontal,
                            itemCount: controller.businessListNews.length,
                            itemBuilder: ((context, index) {
                              return GestureDetector(
                                onTap: (){
                                  Get.to(NewsDetails(newDetails: controller.businessListNews[index]));
                                },
                                child: Row(children: [
                                  NewsContainer(
                                    newnews: controller.businessListNews[index],
                                  ),
                                ]),
                              );
                            })),
                      )),
                ),
                const MainTitle(title: 'Top Health news'),
                SizedBox(
                    height: MediaQuery.of(context).size.height * .4,
                    child: Obx(
                      () => ListView.separated(
                          separatorBuilder: (context, index) {
                            return const SizedBox(width: 16);
                          },
                          scrollDirection: Axis.horizontal,
                          itemCount: controller.healthNewsList.length,
                          itemBuilder: ((context, index) {
                            return GestureDetector(
                              onTap: (){
                                Get.to(NewsDetails(newDetails: controller.healthNewsList[index]));
                              },
                              child: Row(children: [
                                NewsContainer(
                                  newnews: controller.healthNewsList[index],
                                ),
                              ]),
                            );
                          })),
                    )),
                const MainTitle(title: 'Top Science News'),
                SizedBox(
                    height: MediaQuery.of(context).size.height * .4,
                    child: Obx(
                      () => ListView.separated(
                          separatorBuilder: (context, index) {
                            return const SizedBox(width: 16);
                          },
                          scrollDirection: Axis.horizontal,
                          itemCount: controller.scienceList.length,
                          itemBuilder: ((context, index) {
                            return GestureDetector(
                              onTap: (){Get.to(NewsDetails(newDetails: controller.scienceList[index]));},
                              child: Row(children: [
                                NewsContainer(
                                  newnews: controller.scienceList[index],
                                ),
                              ]),
                            );
                          })),
                    )),
                const MainTitle(title: 'Top Sports news'),
                SizedBox(
                    height: MediaQuery.of(context).size.height * .4,
                    child: Obx(
                      () => ListView.separated(
                          separatorBuilder: (context, index) {
                            return const SizedBox(width: 16);
                          },
                          scrollDirection: Axis.horizontal,
                          itemCount: controller.sportsList.length,
                          itemBuilder: ((context, index) {
                            return GestureDetector(
                              onTap: (){
                                Get.off(NewsDetails(newDetails: controller.sportsList[index]));
                              },
                              child: Row(children: [
                                NewsContainer(
                                  newnews: controller.sportsList[index],
                                ),
                              ]),
                            );
                          })),
                    )),
                const MainTitle(title: 'Top Technology news'),
                SizedBox(
                    height: MediaQuery.of(context).size.height * .4,
                    child: Obx(
                      () => ListView.separated(
                          separatorBuilder: (context, index) {
                            return const SizedBox(width: 16);
                          },
                          scrollDirection: Axis.horizontal,
                          itemCount: controller.techonologyList.length,
                          itemBuilder: ((context, index) {
                            return GestureDetector(
                              onTap: (){
                                Get.to(NewsDetails(newDetails: controller.techonologyList[index]));
                              },
                              child: Row(children: [
                                NewsContainer(
                                  newnews: controller.techonologyList[index],
                                ),
                              ]),
                            );
                          })),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
