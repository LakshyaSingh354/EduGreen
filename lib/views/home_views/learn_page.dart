import 'package:flutter/material.dart';

class LearnPage extends StatefulWidget {
  const LearnPage({super.key});

  @override
  State<LearnPage> createState() => _LearnPageState();
}

class _LearnPageState extends State<LearnPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learn'),
        
      ),
      body: GridView.count(
        crossAxisCount: 2, // Number of columns in the grid
        crossAxisSpacing: 16.0, // Spacing between columns
        mainAxisSpacing: 16.0, // Spacing between rows
        padding: EdgeInsets.only(top: 140.0), // Padding around the grid
        children: [
          LearnCategoryCard(
            title: 'Articles',
            icon: Icons.description, // You can change the icon as needed
            onPressed: () {
              // Add navigation logic for Articles
            },
          ),
          LearnCategoryCard(
            title: 'Videos',
            icon: Icons.video_library, // You can change the icon as needed
            onPressed: () {
              // Add navigation logic for Videos
            },
          ),
          LearnCategoryCard(
            title: 'Case Studies',
            icon: Icons.folder_open, // You can change the icon as needed
            onPressed: () {
              // Add navigation logic for Case Studies
            },
          ),
          LearnCategoryCard(
            title: 'Practical Resources',
            icon: Icons.build, // You can change the icon as needed
            onPressed: () {
              // Add navigation logic for Practical Resources
            },
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class LearnCategoryCard extends StatelessWidget {
   String? title;
   IconData? icon;
   VoidCallback? onPressed;

  LearnCategoryCard({
    required this.title,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0)
        ),
        elevation: 9.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 48,
              color: Color.fromARGB(255, 52, 8, 229),
            ),
            SizedBox(height: 8.0),
            Text(
              title!,
              style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 6, 14, 235)),
            ),
          ],
        ),
      ),
    );
  }
}