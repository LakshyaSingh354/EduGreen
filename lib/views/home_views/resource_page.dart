import 'package:flutter/material.dart';
import 'package:sih_app/constants/routes.dart';
import 'package:sih_app/views/home_views/resource_page_views.dart';

class ResourcePage extends StatefulWidget {
  const ResourcePage({super.key});

  @override
  State<ResourcePage> createState() => _ResourcePageState();
}

class _ResourcePageState extends State<ResourcePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF3AC8B3),
        title: Text('Resources'),
      ),
      body: Container(
        color: Color(0xFF03493C),
        child: GridView.count(
          crossAxisCount: 2, // Number of columns in the grid
          crossAxisSpacing: 16.0, // Spacing between columns
          mainAxisSpacing: 16.0, // Spacing between rows
          padding: EdgeInsets.only(top: 140.0), // Padding around the grid
          children: [
            LearnCategoryCard(
              title: 'Articles',
              icon: Icons.description, // You can change the icon as needed
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(articleRoute, (route) => false);
              },
            ),
            LearnCategoryCard(
              title: 'Videos',
              icon: Icons.video_library, // You can change the icon as needed
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(videoRoute, (route) => false);
              },
            ),
            LearnCategoryCard(
              title: 'Case Studies',
              icon: Icons.folder_open, // You can change the icon as needed
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(caseStudyRoute, (route) => false);
              },
            ),
            LearnCategoryCard(
              title: 'AI Assistant',
              icon: Icons.chat_bubble, // You can change the icon as needed
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(chatbotRoute, (route) => false);
              },
            ),
          ],
        ),
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