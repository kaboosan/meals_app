import 'package:flutter/material.dart';

class CategoryMealsAcreen extends StatelessWidget {
  static const routeName = '/categories';
  //final String catId;
  //final String catTitle;

  //CategoryMealsAcreen(this.catId, this.catTitle);

  @override
  Widget build(BuildContext context) {
    final routesArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routesArgs['title'];
    final categoryId = routesArgs['id'];

    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle),
        ),
        body: Center(child: Text('The Recipes for the cat!')));
  }
}
