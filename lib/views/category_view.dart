import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_cloud/widgets/newslistview_builder.dart';

 import '../services/news_service.dart';
 
class CategoryView extends StatefulWidget {
  const CategoryView({super.key, required this.category});
  final String category;
  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  var futureData;

  void initState() {
    futureData = NewsService(Dio()).getGeneralNew('technology');
    super.initState();
  }

   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child:NewsListViewBuilder(categoryName:widget.category ,),
          ),
        ],
      ),
    );
  }
}
