import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:newsapp/model/news_class.dart';

class NewsApi {
  static const String science = 'https://saurav.tech/NewsAPI/top-headlines/category/science/in.json';
  static const String health= 'https://saurav.tech/NewsAPI/top-headlines/category/health/in.json';
  static const String business='https://saurav.tech/NewsAPI/top-headlines/category/business/in.json';
  static const String sports="https://saurav.tech/NewsAPI/top-headlines/category/sports/in.json";
  static const String techonology='https://saurav.tech/NewsAPI/top-headlines/category/technology/in.json';
  static const everything='https://saurav.tech/NewsAPI/everything/cnn.json';
  static Future<List<NewsArticle>> getScienceCrunches() async {
    int maxtries = 3;
    int mintries = 0;
    
    while (maxtries > mintries) {
      try {
        final response = await http.get(Uri.parse(science));
        if (response.statusCode == 200) {
          final List<dynamic> data = jsonDecode(response.body)['articles'];
          return data.map((json) => NewsArticle.fromJson(json)).toList().cast<NewsArticle>();
        }
      } catch (e) {
        print('Error loading the data');
      }
      mintries++;
    }
    return [];
  }

 static Future<List<NewsArticle>> getHealthNews() async {
    int maxtries = 3;
    int mintries = 0;
    
    while (maxtries > mintries) {
      try {
        final response = await http.get(Uri.parse(health));
        if (response.statusCode == 200) {
          final List<dynamic> data = jsonDecode(response.body)['articles'];
          return data.map((json) => NewsArticle.fromJson(json)).toList().cast<NewsArticle>();
        }
      } catch (e) {
        print('Error loading the data');
      }
      mintries++;
    }
    return [];
  }
   static Future<List<NewsArticle>> getSportsNews() async {
    int maxtries = 3;
    int mintries = 0;
    
    while (maxtries > mintries) {
      try {
        final response = await http.get(Uri.parse(sports));
        if (response.statusCode == 200) {
          final List<dynamic> data = jsonDecode(response.body)['articles'];
          return data.map((json) => NewsArticle.fromJson(json)).toList().cast<NewsArticle>();
        }
      } catch (e) {
        print('Error loading the data');
      }
      mintries++;
    }
    return [];
  }
     static Future<List<NewsArticle>> getBusinessNews() async {
    int maxtries = 3;
    int mintries = 0;
    
    while (maxtries > mintries) {
      try {
        final response = await http.get(Uri.parse(business));
        if (response.statusCode == 200) {
          final List<dynamic> data = jsonDecode(response.body)['articles'];
          return data.map((json) => NewsArticle.fromJson(json)).toList().cast<NewsArticle>();
        }
      } catch (e) {
        print('Error loading the data');
      }
      mintries++;
    }
    return [];
  }
     static Future<List<NewsArticle>> getTechonologyNews() async {
    int maxtries = 3;
    int mintries = 0;
    
    while (maxtries > mintries) {
      try {
        final response = await http.get(Uri.parse(techonology));
        if (response.statusCode == 200) {
          final List<dynamic> data = jsonDecode(response.body)['articles'];
          return data.map((json) => NewsArticle.fromJson(json)).toList().cast<NewsArticle>();
        }
      } catch (e) {
        print('Error loading the data');
      }
      mintries++;
    }
    return [];
  }
    static Future<List<NewsArticle>> getEveryNews() async {
    int maxtries = 3;
    int mintries = 0;
    
    while (maxtries > mintries) {
      try {
        final response = await http.get(Uri.parse(everything));
        if (response.statusCode == 200) {
          final List<dynamic> data = jsonDecode(response.body)['articles'];
          return data.map((json) => NewsArticle.fromJson(json)).toList().cast<NewsArticle>();
        }
      } catch (e) {
        print('Error loading the data');
      }
      mintries++;
    }
    return [];
  }
  //Channel functions 
   static const String bbcNews='https://saurav.tech/NewsAPI/everything/bbc-news.json';
  static const String cnnNews='https://saurav.tech/NewsAPI/everything/cnn.json';
  static const String foxNews='https://saurav.tech/NewsAPI/everything/fox-news.json';
    static const String googleNews='https://saurav.tech/NewsAPI/sources.json';



  //   static Future<List<NewsArticle>> getTopNewsBbc() async {
  //   int maxtries = 3;
  //   int mintries = 0;
    
  //   while (maxtries > mintries) {
  //     try {
  //       final response = await http.get(Uri.parse(bbcNews));
  //       if (response.statusCode == 200) {
  //         final List<dynamic> data = jsonDecode(response.body)['articles'];
  //         return data.map((json) => NewsArticle.fromJson(json)).toList().cast<NewsArticle>();
  //       }
  //     } catch (e) {
  //       print('Error loading the data');
  //     }
  //     mintries++;
  //   }
  //   return [];
  // }
  //   static Future<List<NewsArticle>> getTopNewsCnn() async {
  //   int maxtries = 3;
  //   int mintries = 0;
    
  //   while (maxtries > mintries) {
  //     try {
  //       final response = await http.get(Uri.parse(cnnNews));
  //       if (response.statusCode == 200) {
  //         final List<dynamic> data = jsonDecode(response.body)['articles'];
  //         return data.map((json) => NewsArticle.fromJson(json)).toList().cast<NewsArticle>();
  //       }
  //     } catch (e) {
  //       print('Error loading the data');
  //     }
  //     mintries++;
  //   }
  //   return [];
  // }
  //     static Future<List<NewsArticle>> getTopNewsFox() async {
  //   int maxtries = 3;
  //   int mintries = 0;
    
  //   while (maxtries > mintries) {
  //     try {
  //       final response = await http.get(Uri.parse(foxNews));
  //       if (response.statusCode == 200) {
  //         final List<dynamic> data = jsonDecode(response.body)['articles'];
  //         return data.map((json) => NewsArticle.fromJson(json)).toList().cast<NewsArticle>();
  //       }
  //     } catch (e) {
  //       print('Error loading the data');
  //     }
  //     mintries++;
  //   }
  //   return [];
  // }
  //       static Future<List<NewsArticle>> getGoogleNewsFox() async {
  //   int maxtries = 3;
  //   int mintries = 0;
    
  //   while (maxtries > mintries) {
  //     try {
  //       final response = await http.get(Uri.parse(foxNews));
  //       if (response.statusCode == 200) {
  //         final List<dynamic> data = jsonDecode(response.body)['articles'];
  //         return data.map((json) => NewsArticle.fromJson(json)).toList().cast<NewsArticle>();
  //       }
  //     } catch (e) {
  //       print('Error loading the data');
  //     }
  //     mintries++;
  //   }
  //   return [];
  // }

      static Future<List<NewsArticle>> getAllChannelsNews(String url) async {
    int maxtries = 3;
    int mintries = 0;
    
    while (maxtries > mintries) {
      try {
        final response = await http.get(Uri.parse(url));
        if (response.statusCode == 200) {
          final List<dynamic> data = jsonDecode(response.body)['articles'];
          return data.map((json) => NewsArticle.fromJson(json)).toList().cast<NewsArticle>();
        }
      } catch (e) {
        print('Error loading the data');
      }
      mintries++;
    }
    return [];
  }
}
