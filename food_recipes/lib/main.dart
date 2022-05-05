import 'package:flutter/material.dart';
import 'package:food_recipes/home.dart';
import 'package:food_recipes/models/grocery_manager.dart';
import 'package:food_recipes/models/tab_manager.dart';

import 'package:food_recipes/theme/theme.dart';
import 'package:provider/provider.dart';

void main() {
  //1
  runApp(const FoodRecipe());
}

class FoodRecipe extends StatelessWidget {
  //2
  const FoodRecipe({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // theme imported and set to dark mode
    // theme is the variable that holds the theme
    final theme = FoodRecipeTheme.light();

    // Appy home widget

    //3
    return MaterialApp(
      theme: theme, // theme is added
      title: 'Food Recipe',
      home: MultiProvider(
        //This accepts a list of providers for Home’s descendant widgets to access
        providers: [
          // 2
          ChangeNotifierProvider(create: (context) => TabManager()),
          // TODO 10: Add GroceryManager Provider
          ChangeNotifierProvider(create: (context) => GroceryManager()),
        ],
        child: const Home(),
      ),
    );
  }
}
