import 'package:flutter/material.dart';
import 'package:news_cloud/views/category_view.dart';

class CustomCardCategory extends StatelessWidget {
  const CustomCardCategory(
      {super.key, required this.title, required this.image});
  final String title;
  final String image;
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return   CategoryView(
              category: title,
            );
          },
        ),
        
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3),
        child: Container(
          width: 170,
          height: 110,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Text(
              title,
              style: const TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
