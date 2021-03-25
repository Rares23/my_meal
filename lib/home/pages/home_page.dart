import 'package:flutter/material.dart';
import 'package:my_meal/categories/pages/categories_page.dart';
import 'package:my_meal/favorites/pages/favourites_page.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/home';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> _pages = [CategoriesPage(), FavouritesPage()];
  int _selectedPageIndex = 0;

  void _selectTab(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    //   return DefaultTabController(
    //     length: 2,
    //     child: Scaffold(
    //       appBar: AppBar(
    //         title: Text('Recipes'),
    //         bottom: TabBar(
    //           tabs: [
    //             Tab(
    //               icon: Icon(
    //                 Icons.category,
    //               ),
    //               text: 'Categories',
    //             ),
    //             Tab(
    //               icon: Icon(Icons.favorite),
    //               text: 'Favorites',
    //             ),
    //           ],
    //         ),
    //       ),
    //       body: TabBarView(
    //         children: [
    //           CategoriesPage(),
    //           FavouritesPage(),
    //         ],
    //       ),
    //     ),
    //   );
    // }

    return Scaffold(
      appBar: AppBar(
        title: Text('Recipes'),
      ),
      drawer: Drawer(
        child: Text('The Drawer'),
      ),
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Theme.of(context).primaryColorDark,
        selectedItemColor: Colors.white,
        currentIndex: _selectedPageIndex,
        onTap: _selectTab,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          )
        ],
      ),
    );
  }
}
