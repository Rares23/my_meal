import 'package:flutter/material.dart';
import 'package:my_meal/recipes/components/recipe_item.dart';
import 'package:my_meal/recipes/data/seeds/recipes_seed.dart';

class RecipesPage extends StatelessWidget {
  static const String routeName = '/recipes';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final String categoryId = routeArgs['id'];
    final String categoryTitle = routeArgs['title'];
    final filteredRecipes = RECIPES_SEED.where((recipe) {
      return recipe.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemCount: filteredRecipes.length,
        itemBuilder: (context, index) {
          return RecipeItem(
            id: filteredRecipes[index].id,
            title: filteredRecipes[index].title,
            imageUrl: filteredRecipes[index].imageUrl,
            duration: filteredRecipes[index].duration,
            affordability: filteredRecipes[index].affordability,
            complexity: filteredRecipes[index].complexity,
          );
        },
      ),
    );
  }
}
