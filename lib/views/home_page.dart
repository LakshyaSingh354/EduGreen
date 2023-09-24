import 'package:flutter/material.dart';
import 'package:sih_app/views/home_views/resource_page.dart';

import 'home_views.dart';
import 'home_views/community_page.dart';
import 'home_views/dashboard_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const CommunityPage(),
    const CentralDashboardPage(),
    const ResourcePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Body of the selected page
      body: _pages[_currentIndex],
      // Bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
          backgroundColor: Colors.white,
          selectedItemColor: Color(0xFF03493C),
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Community',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard, size: 40,),
            label: 'Dashboard',
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Resources',
          ),
          
        ],
      ),
    );
  }
  
}