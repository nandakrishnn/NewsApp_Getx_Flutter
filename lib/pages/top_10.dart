import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:newsapp/constant/color.dart';
import 'package:newsapp/getx/news_controller.dart';
import 'package:newsapp/model/news_class.dart';
import 'package:newsapp/refactored_widgets/inshot_model_page.dart';

class Top10 extends StatelessWidget {
  final InshortController controller=Get.put(InshortController());
   Top10({super.key});


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: RefreshIndicator(
        onRefresh: ()=>controller.onRefresh(),
        child: Container(
          color: Colors.black,
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Obx(() {
            if(controller.everyNewsList.isEmpty){
              return const CupertinoActivityIndicator();
            }
            return PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: controller.everyNewsList.length,
            itemBuilder: (context, index) {
            return NewImage(news: controller.everyNewsList[index]);
          },);
          } )
        ),
      ),
    );
  }
}

