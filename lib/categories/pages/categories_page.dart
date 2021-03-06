import 'package:flutter/material.dart';
import 'package:my_meal/categories/components/category_item.dart';
import 'package:my_meal/categories/data/models/category.dart';
import 'package:my_meal/categories/data/seeds/categories_seed.dart';
import 'package:my_meal/utils/strings.dart';

class CategoriesPage extends StatefulWidget {
  static const String routeName = '/categories';

  @override
  _CategoriesPageState createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(16),
      children: [
        ...CATEGORIES_SEEDS
            .map((Category category) => CategoryItem(
                  title: category.title,
                  color: category.color,
                  categoryId: category.id,
                ))
            .toList(),
      ],
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
    );
  }
}
