import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:newsapp/getx/home_controllers.dart';
import 'package:newsapp/getx/news_controller.dart';
import 'package:newsapp/pages/channels_top.dart';
import 'package:newsapp/pages/details_newss.dart';
import 'package:newsapp/refactored_widgets/container_home.dart';
import 'package:newsapp/refactored_widgets/main_titles.dart';
import 'package:newsapp/refactored_widgets/top_channels.dart';

class Home extends StatelessWidget {
  final Homecontroller controller = Get.put(Homecontroller());
  final InshortController controllerHome = Get.put(InshortController());
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: RefreshIndicator(
            onRefresh: () => controller.onRefresh(),
            color: Colors.white,
            backgroundColor: Colors.black,
            // onRefresh: () => controller.onRefresh(),
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const MainTitle(title: 'Top Channels Available'),
                  const Divider(
                    indent: 10,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                    SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: (){
                              Get.to(ChannelDetails(channelUrl: 'https://saurav.tech/NewsAPI/everything/bbc-news.json',channelName: 'BBC',));
                          },
                          child: const TopChannels(
                            url:
                                'https://cdn.freebiesupply.com/images/thumbs/2x/bbc-logo.png',
                            channelName: 'BBC',
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                          onTap: (){
                            Get.to(ChannelDetails(channelName: 'CNN', channelUrl: 'https://saurav.tech/NewsAPI/everything/cnn.json'));
                          },
                          child: const TopChannels(
                              url:
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThj8iY_JKWgiwU4b623WACeo_MCuUDBcPh8niqce34Yg&s',
                              channelName: 'CNN'),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                          onTap: (){
   Get.to(ChannelDetails(channelName: 'FOX', channelUrl: 'https://saurav.tech/NewsAPI/everything/fox-news.json'));
                          },
                          child: const TopChannels(
                              url:
                                  'https://logos-world.net/wp-content/uploads/2020/11/Fox-News-Channel-Emblem.png',
                              channelName: 'FOX'),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                          onTap: (){
                              Get.to(ChannelDetails(channelName: 'GOOGLE', channelUrl: 'https://saurav.tech/NewsAPI/top-headlines/category/entertainment/us.json'));
                          },
                          child: const TopChannels(
                              url:
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMN6sFIwni-ZRInrtBs6P7D0TFQ5fDMPuw65OCaGy3Og&s',
                              channelName: 'GOOGLE'),
                        ),
                             const SizedBox(
                          width: 15,
                        ),
                        const TopChannels(
                            url:
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOCfZJQt5UFeKs0tyXTu4unodPz7FZP0kaLw&s',
                            channelName: 'Comming Soon')
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const MainTitle(title: 'Top Business news'),
                  SizedBox(
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
                                onTap: () {
                                  Get.to(NewsDetails(
                                      newDetails: controller
                                          .businessListNews[index]));
                                },
                                child: Row(children: [
                                  NewsContainer(
                                    newnews:
                                        controller.businessListNews[index],
                                  ),
                                ]),
                              );
                            })),
                      )),
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
                                onTap: () {
                                  Get.to(NewsDetails(
                                      newDetails:
                                          controller.healthNewsList[index]));
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
                                onTap: () {
                                  Get.to(NewsDetails(
                                      newDetails:
                                          controller.scienceList[index]));
                                },
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
                                onTap: () {
                                  Get.off(NewsDetails(
                                      newDetails:
                                          controller.sportsList[index]));
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
                                onTap: () {
                                  Get.to(NewsDetails(
                                      newDetails:
                                          controller.techonologyList[index]));
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
      ),
    );
  }
}
