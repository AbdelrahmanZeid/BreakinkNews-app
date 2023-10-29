import 'package:flutter/material.dart';
import 'package:news_cloud/widgets/home_view_body.dart';
import 'package:news_cloud/widgets/news_listview.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
              style: TextStyle(color: Colors.blue),
            ),
            Text(
              'Cloud',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
      body:const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: HomeViewBody(),
        ),
      ),
    );
  }
}


