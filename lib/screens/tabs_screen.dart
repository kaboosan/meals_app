import 'package:flutter/material.dart';
import 'package:meals_app/screens/categories_screen.dart';
import 'package:meals_app/screens/favorites_screen.dart';
import 'package:meals_app/widgets/main_drawer.dart';

class TabsSreen extends StatefulWidget {
  @override
  _TabsSreenState createState() => _TabsSreenState();
}

class _TabsSreenState extends State<TabsSreen> {
  final List<Map<String, Object>> _pages = [
    {'page': CategoriesScreen(), 'title': 'Categories'},
    {'page': FavoritesScreen(), 'title': 'Your Favorite'},
  ];

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  //Version with Tab on the bottom
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title']),
      ),
      drawer: MainDrawer(),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectedPageIndex,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.category),
            title: Text('Categories'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.star),
            title: Text('Favorites'),
          ),
        ],
      ),
    );
  }
}

//Version with Tab on the top
/*class _TabsSreenState extends State<TabsSreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Meals'),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.category),
                text: 'Categories',
              ),
              Tab(
                icon: Icon(Icons.star),
                text: 'Favorites',
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [CategoriesScreen(), FavoritesScreen()],
        ),
      ),
    );
  }
}*/
