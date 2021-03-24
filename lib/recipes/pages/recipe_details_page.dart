import 'package:flutter/material.dart';
import 'package:my_meal/recipes/data/seeds/recipes_seed.dart';

class RecipeDetailsPage extends StatefulWidget {
  static const String routeName = '/recipe-details';

  @override
  _RecipeDetailsPageState createState() => _RecipeDetailsPageState();
}

class _RecipeDetailsPageState extends State<RecipeDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final id = routeArgs['id'];
    final selectedRecipe =
        RECIPES_SEED.firstWhere((element) => element.id == id);

    return Scaffold(
      appBar: AppBar(
        title: Text(selectedRecipe.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 180,
              width: double.infinity,
              child: Image.network(
                selectedRecipe.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                'Ingredients',
                textAlign: TextAlign.left,
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Container(
              alignment: AlignmentDirectional.centerStart,
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...selectedRecipe.ingredients.map((ingredient) {
                    return Text(
                      '• $ingredient',
                      textAlign: TextAlign.start,
                    );
                  }).toList()
                ],
              ),
            ),
            Container(
              alignment: AlignmentDirectional.centerStart,
              margin: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              child: Text(
                'Steps',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              alignment: AlignmentDirectional.centerStart,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...selectedRecipe.steps.map((step) {
                    return Text(
                      '• $step',
                      textAlign: TextAlign.start,
                    );
                  }).toList()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
