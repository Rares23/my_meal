import 'package:flutter/material.dart';
import 'package:my_meal/categories/pages/categories_page.dart';
import 'package:my_meal/home/pages/home_page.dart';
import 'package:my_meal/recipes/pages/recipe_details_page.dart';
import 'package:my_meal/recipes/pages/recipes_page.dart';
import 'package:my_meal/utils/strings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.appTitle,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'OpenSans',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              headline6: TextStyle(
                fontSize: 20,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => HomePage(),
        CategoriesPage.routeName: (context) => CategoriesPage(),
        RecipesPage.routeName: (context) => RecipesPage(),
        RecipeDetailsPage.routeName: (context) => RecipeDetailsPage(),
      },
      onGenerateRoute: (settings) {
        print(settings.arguments);
        return MaterialPageRoute(builder: (context) => CategoriesPage());
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (context) => CategoriesPage());
      },
    );
  }
}
