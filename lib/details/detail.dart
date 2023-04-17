import 'package:flutter/material.dart';
import 'package:food_app_dl/constants/colors.dart';
import 'package:food_app_dl/details/widget/food_dateil.dart';
import 'package:food_app_dl/details/widget/food_img.dart';
import 'package:food_app_dl/models/food.dart';
import 'package:food_app_dl/widgets/custom_app_bar.dart';

class DetailPage extends StatelessWidget {
  final Food food;
  const DetailPage( this.food, {super.key});
  

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(
              Icons.arrow_back_ios_outlined, 
              Icons.favorite_outline,
              // выход в назад в главную
              leftCallBack: () => Navigator.of(context).pop(),
              ),
              FoodImg(food),
              FoodDetail(food),
          ],
        ),

      ),
      );
  }
}