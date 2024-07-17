import 'package:flutter/material.dart';

class HomeScreenBookWidget extends StatelessWidget {
  final String imageUrl;
  final String title;

  const HomeScreenBookWidget({
    required this.imageUrl,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.0), // Add some padding around the book widget
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(30.0), // Add rounded corners
      //   boxShadow: [
      //     BoxShadow(
      //       color: Colors.grey.withOpacity(0.2), // Add subtle shadow
      //       blurRadius: 5.0, // Adjust blur radius for desired effect
      //       spreadRadius: 1.0, // Adjust spread radius for shadow intensity
      //     )
      //   ],
      // ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0), // Clip image corners
            child: Image.asset(
              imageUrl,
              width: 200.0, // Set image width
              height: 190.0, // Set image height
              fit: BoxFit.cover, // Cover the container area
            ),
          ),
          // SizedBox(height: 10.0), // Add spacing between image and title
          Text(
            title,
            style: TextStyle(
              fontSize: 16.0, // Set title font size
              fontWeight: FontWeight.bold, // Make title bold
            ),
          ),
        ],
      ),
    );
  }
}
