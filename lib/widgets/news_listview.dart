 import 'package:flutter/material.dart';
import 'package:news_cloud/models/article_model.dart';
 import 'package:news_cloud/widgets/news_list_tile.dart';

 

class NewsListView extends StatelessWidget {
final  List<ArticleModel> articles ;

  const NewsListView({super.key, required this.articles});

  

  @override
  Widget build(BuildContext context) {

    return  ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 7),
                child: NewsListTile(
                  articleModel: articles[index],
                ),
              );
            },
            itemCount: articles.length,
          );
  }
}
