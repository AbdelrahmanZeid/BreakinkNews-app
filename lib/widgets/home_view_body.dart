import 'package:flutter/material.dart';
import 'package:news_cloud/widgets/custom_card_listview.dart';
 
import 'newslistview_builder.dart';
 
class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
       
       slivers: [
        SliverToBoxAdapter(
          child: CustomCardListView(),
        ),
         SliverToBoxAdapter(
          child:SizedBox(height: 10,),
        ),
        SliverToBoxAdapter(
          child: NewsListViewBuilder(categoryName: 'general',),
        ),
       ],
    );
  }
}


 