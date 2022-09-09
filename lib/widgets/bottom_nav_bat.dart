import 'package:flutter/material.dart';
import 'package:flutter_news_app/article_screen.dart';
import 'package:flutter_news_app/discover_screen.dart';

import '../home_screen.dart';

class BottomNavBar extends StatelessWidget{
  const BottomNavBar({Key? key, required this.index}): super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(        currentIndex: index,
      selectedItemColor: Colors.black,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      unselectedItemColor: Colors.black.withAlpha(100),
      items: [
        BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(left: 50),
              child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, HomeScreen.routeName);
                },
                icon: const Icon(Icons.home),
              ),
            ),
            label: 'Home'),
        BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, DiscoverScreen.routeName);
              },
              icon: const Icon(Icons.search),
            ),
            label: 'Search'),
        BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(right: 50),
              child: IconButton(
                onPressed: () {
                  print('No profile screen yet');
                  Navigator.pushNamed(context, ArticleScreen.routeName);
                },
                icon: const Icon(Icons.person),
              ),
            ),
            label: 'Person')
      ],
    );
  }
}