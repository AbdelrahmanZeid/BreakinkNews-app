import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_cloud/models/article_model.dart';

class NewsListTile extends StatelessWidget {
  const NewsListTile({super.key, required this.articleModel});
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(16),
            ),

            // image: DecorationImage(
            //   image:NetworkImage(articleModel.image??''),
            //   fit: BoxFit.cover,
            // ),
          ),
          child: CachedNetworkImage(
            imageUrl: articleModel.image??'no image for this new',
            placeholder: (context, url) => Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          articleModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          articleModel.subTitle ?? '',
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 16,
            color: Colors.black.withOpacity(.5),
          ),
        ),
      ],
    );
  }
}
