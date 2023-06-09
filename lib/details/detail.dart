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
      floatingActionButton: Container(
        width: 100,
        height: 56,
        child: RawMaterialButton(onPressed: (){},
        fillColor: kPrimaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
          ),
          elevation: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:  [
              const Icon(Icons.shopping_bag_outlined,
              color: Colors.black,
              size: 30,),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle
                ),
                child:
                Text(food.quantity.toString(), style: const TextStyle(color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18),) ,

              )
            ],
          ),
        ),
      ),
      );
  }
}