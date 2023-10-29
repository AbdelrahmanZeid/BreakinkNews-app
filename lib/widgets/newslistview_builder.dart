import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../models/article_model.dart';
import '../services/news_service.dart';
import 'news_listview.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.categoryName});

  final String categoryName;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  @override
  var futureData;
  void initState() {
    futureData = NewsService(Dio()).getGeneralNew(widget.categoryName);
    super.initState();
  }

  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      builder: (context, snapshot) {
        return snapshot.hasData
            ? NewsListView(articles: snapshot.data ?? [])
            : const Center(
                child: CircularProgressIndicator(),
              );
      },
      future: futureData,
    );
  }
}
