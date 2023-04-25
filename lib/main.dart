import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_meals_navigation_app/screens/categories_screen.dart';
import 'package:flutter_meals_navigation_app/screens/filters_screen.dart';
import 'package:flutter_meals_navigation_app/screens/meal_detail_screen.dart';
import 'package:flutter_meals_navigation_app/screens/tabs_screen.dart';

import 'screens/category_meals_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals',
      theme: ThemeData(
          primarySwatch: Colors.pink,
          canvasColor: const Color.fromRGBO(255, 254, 229, 1),
          fontFamily: 'Raleway',
          // textTheme: ThemeData.light().textTheme.copyWith(
          //     bodyText1: const TextStyle(
          //       color: Color.fromRGBO(20, 51, 51, 1),
          //     ),
          //     bodyText2: const TextStyle(
          //       color: Color.fromRGBO(20, 51, 51, 1),
          //     ),
          //     titleMedium: const TextStyle(
          //       fontSize: 10,
          //       fontFamily: 'RobotoCondensed',
          //       fontWeight: FontWeight.bold,
          //     ),
          //     titleSmall: const TextStyle(
          //       fontSize: 20,
          //       fontFamily: 'RobotoCondensed',
          //       fontWeight: FontWeight.bold,
          //     ),
          //     titleLarge: const TextStyle(
          //       fontSize: 30,
          //       fontFamily: 'RobotoCondensed',
          //       fontWeight: FontWeight.bold,
          //     ))),
      ),
      initialRoute: '/',
      routes: {
        '/': (ctx) => const TabsScreen(),

        CategoryMealsScreen.routeName: (ctx) => const CategoryMealsScreen(),
        MealDetailScreen.routeName: (ctx) => const MealDetailScreen(),
        FiltersScreen.routeName: (ctx) => const FiltersScreen(),
      },
      onGenerateRoute: (settings) {
        print(settings.arguments);
        // if (settings.name == '/meal-detail') {
        //   return ...;
        // } else if (settings.name == '/something-else') {
        //   return ...;
        // }
        // return MaterialPageRoute(builder: (ctx) => CategoriesScreen(),);
      },

      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => const CategoriesScreen(),);
      },
      // home: const CategoriesScreen(),
    );
  }
}
