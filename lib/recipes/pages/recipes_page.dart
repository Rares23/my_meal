import 'package:flutter/material.dart';

class RecipesPage extends StatelessWidget {
  static const String routeName = '/recipes';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final String categoryId = routeArgs['id'];
    final String categoryTitle = routeArgs['title'];

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: Container(
        child: Text('The Recipes Page'),
      ),
    );
  }
}
