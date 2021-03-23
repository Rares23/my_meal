import 'package:flutter/material.dart';

class RecipeItem extends StatelessWidget {
  final String id;
  final String title;

  RecipeItem({@required this.id, @required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(title),
    );
  }
}
