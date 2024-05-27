import 'dart:async';
import 'dart:math';

import 'package:get/get.dart';
import 'package:newsapp/controller/functions.dart';
import 'package:newsapp/model/news_class.dart';

class Homecontroller extends GetxController {
  RxList<NewsArticle> healthNewsList = <NewsArticle>[].obs;
  RxList<NewsArticle> sportsList = <NewsArticle>[].obs;
  RxList<NewsArticle> businessListNews = <NewsArticle>[].obs;
  RxList<NewsArticle> scienceList=<NewsArticle>[].obs;
  RxList<NewsArticle>techonologyList=<NewsArticle>[].obs;
    Timer?_timer;

  @override
  void onInit() {
    super.onInit();
    getHealthNews();
    getSportsNews();
    getBusinessNews();
    getSciences();
    getTecchonology();
    _startAutoRefresh();
  }

  Future<void> getHealthNews() async {
    List<NewsArticle> appleList = await NewsApi.getHealthNews();
    appleList.shuffle(Random());
    healthNewsList.assignAll(appleList);
  }

  Future<void> getSportsNews() async {
    List<NewsArticle> appleList = await NewsApi.getSportsNews();
    appleList.shuffle(Random());
    sportsList.assignAll(appleList);
  }

  Future<void> getBusinessNews() async {
    List<NewsArticle> business = await NewsApi.getBusinessNews();
    business.shuffle(Random());
    businessListNews.assignAll(business);
  }
  Future<void>getSciences()async{
    List<NewsArticle>crunches=await NewsApi.getScienceCrunches();
    scienceList.shuffle(Random());
    scienceList.assignAll(crunches);
  }
  Future<void>getTecchonology()async{
    List <NewsArticle>newlist=await NewsApi.getTechonologyNews();
    techonologyList.shuffle(Random());
    techonologyList.assignAll(newlist);
  }

 Future<void> onRefresh() async {
    getHealthNews();
    getSportsNews();
    getBusinessNews();
    getSciences();
    getTecchonology();

  }
    void _startAutoRefresh() {
    _timer = Timer.periodic(const Duration(minutes: 5), (timer) {
      onRefresh();
    });
  }
    @override
  void onClose() {
    _timer?.cancel();
    super.onClose();
  }
}
