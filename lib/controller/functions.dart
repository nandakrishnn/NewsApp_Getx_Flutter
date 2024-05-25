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

}
