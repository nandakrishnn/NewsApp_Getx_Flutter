import 'package:get/get.dart';
import 'package:newsapp/controller/functions.dart';
import 'package:newsapp/model/news_class.dart';

class InshortController extends GetxController {
  RxList<NewsArticle> everyNewsList = <NewsArticle>[].obs;

  @override
  void onInit() {
    super.onInit();
    getEveryNews();
  }

    Future<void> getEveryNews() async {
    List<NewsArticle> every = await NewsApi.getEveryNews();
    everyNewsList.assignAll(every);
  }
}
