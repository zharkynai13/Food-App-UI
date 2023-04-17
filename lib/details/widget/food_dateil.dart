import 'package:flutter/material.dart';
import 'package:food_app_dl/constants/colors.dart';
import 'package:food_app_dl/models/food.dart';

class FoodDetail extends StatelessWidget {
  final Food food;
  FoodDetail(this.food, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      color: kBackgraund,
      child: Column(
        children: [
          Text(food.name, style: const TextStyle(
            fontSize: 24, 
            fontWeight: FontWeight.bold,
            ),),
            const SizedBox(width: 15,),

          ],
      ),

    );
  }
}