import 'package:flutter/material.dart';
import 'package:food_app_dl/constants/colors.dart';
import 'package:food_app_dl/models/food.dart';

class FoodImg extends StatelessWidget {
  final Food food;
  const FoodImg(this.food, {super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 250,
      child:  Stack(
        children: [
          Column(
            children: [
              Expanded(child: Container(),),
          Expanded(child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
             ),
             color: kBackgraund,
            ),
            
          ),)
          ,

        ],
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: const EdgeInsets.all(15),
              width: 250,
              height: 250,
              decoration:  BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    offset: const Offset(-1, 10,),
                    blurRadius: 10,
                  )],
              ),
              child: Image.asset(food.imgUrl,
              fit: BoxFit.cover,),
            ),
          )
        ],
      )
    );
  }
}