import 'package:get/get.dart';
import 'package:newsapp/controller/functions.dart';
import 'package:newsapp/model/news_class.dart';

class Homecontroller extends GetxController {
  RxList<NewsArticle> healthNewsList = <NewsArticle>[].obs;
  RxList<NewsArticle> sportsList = <NewsArticle>[].obs;
  RxList<NewsArticle> businessListNews = <NewsArticle>[].obs;
  RxList<NewsArticle> scienceList=<NewsArticle>[].obs;
  RxList<NewsArticle>techonologyList=<NewsArticle>[].obs;
    RxList<NewsArticle>everyNewsList=<NewsArticle>[].obs;

  @override
  void onInit() {
    super.onInit();
    getHealthNews();
    getSportsNews();
    getBusinessNews();
    getSciences();
    getTecchonology();

  }

  Future<void> getHealthNews() async {
    List<NewsArticle> appleList = await NewsApi.getHealthNews();
    healthNewsList.assignAll(appleList);
  }

  Future<void> getSportsNews() async {
    List<NewsArticle> appleList = await NewsApi.getSportsNews();
    sportsList.assignAll(appleList);
  }

  Future<void> getBusinessNews() async {
    List<NewsArticle> business = await NewsApi.getBusinessNews();
    businessListNews.assignAll(business);
  }
  Future<void>getSciences()async{
    List<NewsArticle>crunches=await NewsApi.getScienceCrunches();
    scienceList.assignAll(crunches);
  }
  Future<void>getTecchonology()async{
    List <NewsArticle>newlist=await NewsApi.getTechonologyNews();
    techonologyList.assignAll(newlist);
  }

 Future<void> onRefresh() async {
    getHealthNews();
    getSportsNews();
    getBusinessNews();
    getSciences();
    getTecchonology();

  }
}
