import 'package:flutter/material.dart';
import 'package:my_meal/recipes/components/recipe_item.dart';
import 'package:my_meal/recipes/data/models/recipe.dart';
import 'package:my_meal/recipes/data/seeds/recipes_seed.dart';

class RecipesPage extends StatefulWidget {
  static const String routeName = '/recipes';

  @override
  _RecipesPageState createState() => _RecipesPageState();
}

class _RecipesPageState extends State<RecipesPage> {
  String categoryTitle;
  List<Recipe> filteredRecipes;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final String categoryId = routeArgs['id'];
    categoryTitle = routeArgs['title'];
    filteredRecipes = RECIPES_SEED.where((recipe) {
      return recipe.categories.contains(categoryId);
    }).toList();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
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
