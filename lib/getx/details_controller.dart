// import 'package:get/get.dart';
// import 'package:newsapp/controller/functions.dart';
// import 'package:newsapp/model/news_class.dart';

// class NewsDetailsController extends GetxController{
//    RxList<NewsArticle>newsDeatils=<NewsArticle>[].obs;


//   Future<void>newsDetails(String category)async{
//       try{
//         List<NewsArticle>articles=[];
//         switch(category){
//           case 'science':
//           articles=await NewsApi.getScienceCrunches();
//           break;
//           case 'health':
//           articles=await NewsApi.getHealthNews();
//           break;
//           case 'business':
//           articles=await NewsApi.getBusinessNews();
//           break;
//           case 'sports':
//           articles=await NewsApi.getSportsNews();
//           break;
//           case 'techonology':
//           articles=await NewsApi.getTechonologyNews();
//           break;
       
//         }
//         newsDeatils.assignAll(articles);
//       }catch(e){
//         print(e.toString());
//       }
//   }

// }