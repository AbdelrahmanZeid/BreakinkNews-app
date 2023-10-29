import 'package:dio/dio.dart';
import 'package:news_cloud/models/article_model.dart';

class NewsService {
  final Dio dio;
  NewsService(
    this.dio,
  );

  Future<List<ArticleModel>> getGeneralNew(String category) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=a318a6bfd6444513a39a55e2fb369e45&category=$category');

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData["articles"];
      List<ArticleModel> articelList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
            image: article['urlToImage'],
            title: article['title'],
            subTitle: article['description']);

        articelList.add(articleModel);
      }
      return articelList;
    } catch (e) {
      return [];
    }
  }
}
