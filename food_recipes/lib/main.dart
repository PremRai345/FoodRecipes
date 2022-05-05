import 'package:flutter/material.dart';
import 'package:food_recipes/screen/home.dart';
import 'package:food_recipes/theme/theme.dart';

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
    final theme = FoodRecipeTheme.dark();

    // Appy home widget

    //3
    return MaterialApp(
      theme: theme, // theme is added
      title: 'Food Recipe',
      home: const Home(),
    );

    
  }
  
}
