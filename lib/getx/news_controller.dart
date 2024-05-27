import 'dart:async';
import 'dart:math';

import 'package:get/get.dart';
import 'package:newsapp/controller/functions.dart';
import 'package:newsapp/model/news_class.dart';

class InshortController extends GetxController {
  RxList<NewsArticle> everyNewsList = <NewsArticle>[].obs;
  Timer? timer;

  @override
  void onInit() {
    super.onInit();
    getEveryNews();
    _startAutoRefresh();
  }

  Future<void> getEveryNews() async {
    List<NewsArticle> every = await NewsApi.getEveryNews();
    every.shuffle(Random());

    everyNewsList.assignAll(every);
  }

  Future<void> onRefresh() async {
    await getEveryNews();
  }

  void _startAutoRefresh() {
    timer = Timer.periodic(const Duration(minutes: 5), (timer) {
      onRefresh();
    });
  }

  @override
  void onClose() {
    timer?.cancel();
    super.onClose();
  }
}
