import 'package:flutter/material.dart';
import 'package:news_cloud/models/category_model.dart';
import 'package:news_cloud/widgets/custom_card_category.dart';

class CustomCardListView extends StatelessWidget {
  const CustomCardListView({super.key});
  final List<CategoryModel> categoryModelList = const [
    CategoryModel(image: 'assets/business.jpg', title: 'Business'),
    CategoryModel(image: 'assets/entertaiment.avif', title: 'Entertainment'),
    CategoryModel(image: 'assets/general.jpg', title: 'General'),
    CategoryModel(image: 'assets/health.avif', title: 'Health'),
    CategoryModel(image: 'assets/science.avif', title: 'Science'),
    CategoryModel(image: 'assets/sport.jpg', title: 'Sports'),
    CategoryModel(image: 'assets/technology.jpeg', title: 'Technology'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return CustomCardCategory(
            image: categoryModelList[index].image,
            title: categoryModelList[index].title,
          );
        },
        itemCount: categoryModelList.length,
      ),
    );
  }
}
