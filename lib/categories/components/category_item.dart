import 'package:flutter/material.dart';
import 'package:my_meal/recipes/pages/recipes_page.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;
  final String categoryId;

  CategoryItem(
      {@required this.title, @required this.color, @required this.categoryId});

  void selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed(
      RecipesPage.routeName,
      arguments: {
        'id': categoryId,
        'title': title,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(title, style: Theme.of(context).textTheme.headline6),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
