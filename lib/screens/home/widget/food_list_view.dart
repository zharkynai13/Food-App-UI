import 'package:flutter/material.dart';
import 'package:food_app_dl/models/restaurant.dart';
import 'package:food_app_dl/screens/home/widget/food_item.dart';

class FoodListView extends StatelessWidget {
  final int selected;
  final Function callback;
  final PageController pageController;
  final Restaurant restaurant;
  FoodListView(this.selected,
   this.callback, 
   this.pageController,
   this.restaurant, {super.key});
  @override
  Widget build(BuildContext context) {
    final category = restaurant.menu.keys.toList();
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: PageView(
        controller: pageController,
        onPageChanged: (index) => callback(index),
        children: 
          category.map((e) => 
          ListView.separated(
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) => FoodItem(
              restaurant.menu[category[selected]]![index]
            ), 
            separatorBuilder: (_, index) => const SizedBox(height: 15), 
            itemCount: restaurant.menu[category[selected]]!.length,
            )).toList()
        ,
      ),
    );
  }
}