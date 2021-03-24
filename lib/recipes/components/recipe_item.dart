import 'package:flutter/material.dart';
import 'package:my_meal/recipes/data/utils/affordability.dart';
import 'package:my_meal/recipes/data/utils/complexity.dart';

class RecipeItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  RecipeItem({
    @required this.id,
    @required this.title,
    @required this.imageUrl,
    @required this.duration,
    @required this.complexity,
    @required this.affordability,
  });

  String get complexityText {
    switch (complexity) {
      case Complexity.Simple:
        return 'Simple';
      case Complexity.Hard:
        return 'Hard';
      case Complexity.Challenging:
        return 'Challenging';
      default:
        return 'Simple';
    }
  }

  String get affordabilityText {
    switch (affordability) {
      case Affordability.Pricey:
        return 'Pricey';
      case Affordability.Affordable:
        return 'Affordable';
      case Affordability.Luxurious:
        return 'Luxurious';
      default:
        return 'Affordable';
    }
  }

  void selectRecipe() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: selectRecipe,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          margin: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                    child: Image.network(
                      imageUrl,
                      height: 120,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    child: Container(
                      width: 220,
                      color: Colors.black54,
                      padding: EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 16,
                      ),
                      child: Text(
                        title,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                    bottom: 16,
                    right: 16,
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.schedule,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text('$duration min'),
                      ],
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.work,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(complexityText),
                      ],
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.money,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(affordabilityText),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
