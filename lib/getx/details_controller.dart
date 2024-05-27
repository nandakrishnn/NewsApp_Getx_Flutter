import 'package:get/get.dart';
import 'package:newsapp/controller/functions.dart';
import 'package:newsapp/model/news_class.dart';

class NewsChannelsController extends GetxController {
  RxList<NewsArticle> newsDeatils = <NewsArticle>[].obs;
    RxBool isLoading = true.obs;

  Future<void> getAllNews(String url) async {
    List<NewsArticle> appleList = await NewsApi.getAllChannelsNews(url);
    newsDeatils.assignAll(appleList);
  }

  // Future<void>newsDetails(String category)async{
  //     try{
  //       List<NewsArticle>articles=[];
  //       switch(category){
  //         case 'BBC':
  //         articles=await NewsApi.getScienceCrunches();
  //         break;
  //         case 'CNN':
  //         articles=await NewsApi.getHealthNews();
  //         break;
  //         case 'FOX':
  //         articles=await NewsApi.getBusinessNews();
  //         break;
  //         case 'GOOGLE':
  //         articles=await NewsApi.getSportsNews();
  //         break;

  //       }
  //       newsDeatils.assignAll(articles);
  //     }catch(e){
  //       print(e.toString());
  //     }
  // }
}
