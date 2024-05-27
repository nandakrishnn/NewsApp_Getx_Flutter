// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/getx/details_controller.dart';
import 'package:newsapp/refactored_widgets/inshot_model_page.dart';

class ChannelDetails extends StatelessWidget {
  final String channelName;
   final String channelUrl;
  NewsChannelsController controller=Get.put(NewsChannelsController());
   ChannelDetails({super.key, required this.channelName, required this.channelUrl});

  @override
  Widget build(BuildContext context) {
    controller.getAllNews(channelUrl);
    return  Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text('$channelName '+'Headlines',style: const TextStyle(color: Colors.white),),
      ),
      body:Obx(() {
      
        return Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(image: NetworkImage(''))
        ),
        child: PageView.builder(itemCount: controller.newsDeatils.length
        ,itemBuilder: (context, index) {
          return NewImage(news: controller.newsDeatils[index]);
        },
        
        ),
      );
      })
    );
  }
}