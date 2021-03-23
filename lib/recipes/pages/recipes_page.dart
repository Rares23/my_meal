import 'package:flutter/material.dart';

class RecipesPage extends StatelessWidget {
  final String categoryId;
  final String categoryTitle;

  RecipesPage({@required this.categoryId, @required this.categoryTitle});

  @override
  Widget build(BuildContext context) {
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
