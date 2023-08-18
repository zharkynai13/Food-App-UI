import 'package:flutter/material.dart';
import 'package:food_app_dl/constants/colors.dart';
import 'package:food_app_dl/details/widget/food_quantity.dart';
import 'package:food_app_dl/models/food.dart';

class FoodDetail extends StatelessWidget {
  final Food food;
  FoodDetail(this.food, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      color: kBackgraund,
      child: Column(
        children: [
          Text(
            food.name,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildIconText(
                    Icons.access_time_outlined, Colors.blue, food.waitTime),
                _buildIconText(
                    Icons.star_outline, Colors.amber, food.score.toString()),
                _buildIconText(
                    Icons.local_fire_department_outlined, Colors.red, food.cal),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          FoodQuantity(
            food: food,
          ),
          const SizedBox(
            height: 30,
          ),
          const Row(
            children: [
              Text(
                "Ingredients",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 100,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            food.ingridients[index].values.first,
                            width: 52,
                          ),
                          Text(food.ingridients[index].keys.first),
                        ],
                      ),
                    ),
                separatorBuilder: (_, index) => const SizedBox(
                      width: 20,
                    ),
                itemCount: food.ingridients.length),
          ),
          const SizedBox(
            height: 30,
          ),
          const Row(
            children: [
              Text(
                "About",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            food.about,
            style: const TextStyle(
              fontSize: 18,
              height: 1.5,
              wordSpacing: 1.2,
            ),
          ),
          const Padding(padding: EdgeInsets.all(40))
        ],
      ),
    );
  }

  Widget _buildIconText(IconData icon, Color color, String text) {
    return Row(
      children: [
        Icon(
          icon,
          color: color,
          size: 20,
        ),
        Text(
          text,
          style: const TextStyle(fontSize: 16),
        )
      ],
    );
  }
}
