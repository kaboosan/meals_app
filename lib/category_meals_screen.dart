import 'package:flutter/material.dart';

class CategoryMealsAcreen extends StatelessWidget {
  final String catId;
  final String catTitle;

  CategoryMealsAcreen(this.catId, this.catTitle);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(catTitle),
        ),
        body: Center(child: Text('The Recipes for the cat!')));
  }
}
